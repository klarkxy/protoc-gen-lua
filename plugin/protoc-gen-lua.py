#!/usr/bin/env python3
# -*- encoding:utf8 -*-

#  FILE:  protoc-gen-lua.py
#  DESCRIPTION:  protoc-gen-lua
#      Google's Protocol Buffers project, ported to lua.
#      https://github.com/klarkxy/protoc-gen-lua/
#
#      Copyright (c) 2021 , Klarkxy 278370456@qq.com
#      All rights reserved.
#
#      Use, modification and distribution are subject to the "New BSD License"
#      as listed at <url: http://www.opensource.org/licenses/bsd-license.php >.
#
#  COMPANY:  BlackFox
#  CREATED:  2021-12-02 17:13:52 CST


import sys
from black import json

from google.protobuf.compiler import plugin_pb2
from google.protobuf import descriptor_pb2
from google.protobuf import json_format
import google.protobuf.message as Message
from case_convert import snake_case

from writer import lua_variable, Writer, set_debug

PROTOC_GEN_LUA_VERSION = "Unknown"
PROTO_GEN_LUA_VERSION = "Develop"

DEBUG = False

def log(str: str) -> None:
    if DEBUG:
        print(str, file=sys.stderr)
        
def MessageToTable(message : Message) -> str:
    d = json_format.MessageToDict(message)
    d.pop("sourceCodeInfo")
    w = Writer()
    def Write(w : Writer, value):
        if isinstance(value, dict):
            w.pc("{").pe()
            with w:
                for key, value in value.items():
                    w.pi().pc(lua_variable(snake_case(key)), " = ")
                    Write(w, value)
                    w.pc(",").pe()
            w.pi().pc("}")
        elif isinstance(value, (list | tuple)):
            w.pc("{").pe()
            with w:
                for value in value:
                    w.pi()
                    Write(w, value)
                    w.pc(",").pe()
            w.pi().pc("}")
        elif isinstance(value, str):
            w.pc(f"[[{value}]]")
        elif isinstance(value, bool):
            w.pc(f"{'true' if value else 'false'}")
        else:
            w.pc(f"{value}")
    Write(w, d)
    return "return " + str(w)

def FileHead() -> str :
    w = Writer()
    w.p("-- This file is generated by proto-gen-lua. DO NOT EDIT.")
    w.p(f"-- The protoc version is '{PROTOC_GEN_LUA_VERSION}'")
    w.p(f"-- The proto-gen-lua version is '{PROTO_GEN_LUA_VERSION}'")
    w.p("")
    return str(w)

def GetModuleName(file_name : str) -> str:
    return file_name.split(".")[0] + "_pb"

def GetLuaModuleName(file_name : str) -> str:
    return ".".join(GetModuleName(file_name).split("/"))

def GetLuaModuleVariable(file_name : str) -> str:
    return "_".join(GetModuleName(file_name).split("/"))

lua_type = {}
proto_type = {}
lua_desc_type = {}
proto_map_type = {}

def Declare(desc, proto_name : str, lua_name : str, lua_desc_name : str):
    lua_type[proto_name] = lua_name
    proto_type[lua_name] = proto_name
    lua_desc_type[lua_name] = lua_desc_name
    if isinstance(desc, descriptor_pb2.EnumDescriptorProto):
        log(f"Declare Enum '{proto_name}' => '{lua_name}'")
    elif isinstance(desc, descriptor_pb2.DescriptorProto):
        log(f"Declare Message '{proto_name}' => '{lua_name}'")
        for idx, subdesc in enumerate(desc.enum_type, 1):
            Declare(subdesc, proto_name + "." + subdesc.name, lua_name + "." + subdesc.name, lua_desc_name + f".enum_type[{idx}]")
        for idx, subdesc in enumerate(desc.nested_type, 1):
            Declare(subdesc, proto_name + "." + subdesc.name, lua_name + "." + subdesc.name, lua_desc_name + f".nested_type[{idx}]")
        # 检查是不是map
        if desc.options.map_entry:
            proto_map_type[proto_name] = desc.field
    elif isinstance(desc, descriptor_pb2.FileDescriptorProto):
        log(f"Declare File '{proto_name}' => '{lua_name}'")
        lua_type[proto_name] = lua_name
        for idx, subdesc in enumerate(desc.enum_type, 1):
            Declare(subdesc, proto_name + "." + subdesc.name, lua_name + "." + subdesc.name, lua_desc_name + f".enum_type[{idx}]")
        for idx, subdesc in enumerate(desc.message_type, 1):
            Declare(subdesc, proto_name + "." + subdesc.name, lua_name + "." + subdesc.name, lua_desc_name + f".message_type[{idx}]")
    else:
        raise f"Unknown type of '{desc.name}'"

def AnnotateEnum(w : Writer, enum_desc : descriptor_pb2.EnumDescriptorProto, stack : list[str]):
    enum_stack = [*stack, enum_desc.name]
    enum_name = '.'.join(enum_stack)
    log(f"Annotate Enum '{enum_name}'")
    with w.sub(prefix="---") as c:
        c.p("@alias ", enum_name)
        for enum_value_desc in enum_desc.value:
            c.p(f"| '{enum_name}.{enum_value_desc.name}' # = {enum_value_desc.number}")
    w.p()
    
def GenerateEnum(w : Writer, enum_desc : descriptor_pb2.EnumDescriptorProto, stack : list[str]):
    enum_stack = [*stack, enum_desc.name]
    enum_name = '.'.join(enum_stack)
    log(f"Generate Enum '{enum_name}'")
    w.p(f"{enum_name} = {{}}")
    w.p(f"{enum_name}._FullName = \"{proto_type[enum_name]}\"")
    w.p(f"{enum_name}._Descriptor = \"{lua_desc_type[enum_name]}\"")
    for enum_value_desc in enum_desc.value:
        w.p(f"{enum_name}.{enum_value_desc.name} = {enum_value_desc.number}")
    for enum_value_desc in enum_desc.value:
        w.p(f"{enum_name}[{enum_value_desc.number}] = \"{proto_type[enum_name]}.{enum_value_desc.name}\"")
    w.p(f"registry.RegistEnum({enum_name})")
    w.p()
           
def GetLuaFieldType(field : descriptor_pb2.FieldDescriptorProto) -> str:
    field_type = ""
    # 判断是不是map
    if field.label == descriptor_pb2.FieldDescriptorProto.LABEL_REPEATED:
        if field.type_name and field.type_name in proto_map_type.keys():
            t = proto_map_type[field.type_name]
            return f"dict<{GetLuaFieldType(t[0])}, {GetLuaFieldType(t[1])}>" 
        else:
            field_type = "[]"
        
    match field.type:
        case descriptor_pb2.FieldDescriptorProto.TYPE_DOUBLE:
            field_type = "number" + field_type
        case descriptor_pb2.FieldDescriptorProto.TYPE_FLOAT:
            field_type = "number" + field_type
        case descriptor_pb2.FieldDescriptorProto.TYPE_INT64:
            field_type = "number" + field_type
        case descriptor_pb2.FieldDescriptorProto.TYPE_UINT64:
            field_type = "number" + field_type
        case descriptor_pb2.FieldDescriptorProto.TYPE_INT32:
            field_type = "number" + field_type
        case descriptor_pb2.FieldDescriptorProto.TYPE_FIXED64:
            field_type = "number" + field_type
        case descriptor_pb2.FieldDescriptorProto.TYPE_FIXED32:
            field_type = "number" + field_type
        case descriptor_pb2.FieldDescriptorProto.TYPE_BOOL:
            field_type = "boolean" + field_type
        case descriptor_pb2.FieldDescriptorProto.TYPE_STRING:
            field_type = "string" + field_type
        case descriptor_pb2.FieldDescriptorProto.TYPE_GROUP:
            field_type = lua_type[field.type_name] + field_type
        case descriptor_pb2.FieldDescriptorProto.TYPE_MESSAGE:
            field_type = lua_type[field.type_name] + field_type
        case descriptor_pb2.FieldDescriptorProto.TYPE_BYTES:
            field_type = "string" + field_type
        case descriptor_pb2.FieldDescriptorProto.TYPE_UINT32:
            field_type = "number" + field_type
        case descriptor_pb2.FieldDescriptorProto.TYPE_ENUM:
            field_type = lua_type[field.type_name] + field_type
        case descriptor_pb2.FieldDescriptorProto.TYPE_SFIXED32:
            field_type = "number" + field_type
        case descriptor_pb2.FieldDescriptorProto.TYPE_SFIXED64:
            field_type = "number" + field_type
        case descriptor_pb2.FieldDescriptorProto.TYPE_SINT32:
            field_type = "number" + field_type
        case descriptor_pb2.FieldDescriptorProto.TYPE_SINT64:
            field_type = "number" + field_type
    return field_type
    
def AnnotateMessage(w : Writer, message_desc : descriptor_pb2.DescriptorProto, stack : list[str]):
    message_stack = [*stack, message_desc.name]
    message_name = '.'.join(message_stack)
    log(f"Annotate Message '{message_name}'")
    # 生成所有的内置Enum
    for enum_desc in message_desc.enum_type:
        AnnotateEnum(w, enum_desc, message_stack)
    # 生成所有的内置Message
    for nested_desc in message_desc.nested_type:
        AnnotateMessage(w, nested_desc, message_stack)
    # 生成当前的结构
    with w.sub(prefix="---") as c:
        c.p(f"@class {message_name} : protobuf.Message")
        for field_desc in message_desc.field:
            c.p(f"@field {field_desc.name} {GetLuaFieldType(field_desc)}")
    w.p()

  
def GenerateMessage(w : Writer, message_desc : descriptor_pb2.DescriptorProto, stack : list[str]):
    message_stack = [*stack, message_desc.name]
    message_name = '.'.join(message_stack)
    log(f"Generate Message '{message_name}'")
    # 生成所有的内置Enum
    for enum_desc in message_desc.enum_type:
        GenerateEnum(w, enum_desc, message_stack)
    # 生成所有的内置Message
    for nested_desc in message_desc.nested_type:
        GenerateMessage(w, nested_desc, message_stack)
    w.p(f"---@type fun():{message_name}")
    w.p(f"{message_name} = protobuf.Message({lua_desc_type[message_name]})")
    w.p(f"{message_name}._FullName = \"{proto_type[message_name]}\"")
    w.p(f"{message_name}._Descriptor = \"{lua_desc_type[message_name]}\"")
    w.p(f"registry.RegistMessage({message_name})")
    w.p()

def GenerateLua(file_desc : descriptor_pb2.FileDescriptorProto) -> str:
    module_name = GetModuleName(file_desc.name)
    lua_module_name = GetLuaModuleName(file_desc.name)
    lua_module_variable = GetLuaModuleVariable(file_desc.name)
    log(f"-----------------------------------------------------")
    log(f"Generate File '{file_desc.name}'")
    w = Writer()
    # 引用protoc-gen-lua的库文件
    w.p("local protobuf = require \"protobuf.protobuf\"")
    w.p("local registry = require \"protobuf.registry\"")
    w.p("")
    # 引用其他proto
    for dependency in file_desc.dependency:
        w.p(f"local {GetLuaModuleVariable(dependency)} = require \"{GetLuaModuleName(dependency)}\"")
    w.p("")
    # 引用自己的说明文件
    w.p(f"local {lua_module_variable}_desc = require \"{lua_module_name}_desc\"")
    w.p("")
    w.p(f"local {lua_module_variable} = {{}}")
    w.p()
    # 生成所有注释
    for enum_desc in file_desc.enum_type:
        AnnotateEnum(w, enum_desc, [lua_module_variable])
    for message_desc in file_desc.message_type:
        AnnotateMessage(w, message_desc, [lua_module_variable])
    # 生成实际代码
    for enum_desc in file_desc.enum_type:
        GenerateEnum(w, enum_desc, [lua_module_variable])
    for message_desc in file_desc.message_type:
        GenerateMessage(w, message_desc, [lua_module_variable])
    w.p()
    w.p(f"return {lua_module_variable}")
    return str(w)


if __name__ == "__main__":
    set_debug(DEBUG)
    plugin_require_bin = sys.stdin.buffer.read()
    code_gen_req = plugin_pb2.CodeGeneratorRequest()
    code_gen_req.ParseFromString(plugin_require_bin)
    
    PROTOC_GEN_LUA_VERSION = f"v{code_gen_req.compiler_version.major}.{code_gen_req.compiler_version.minor}.{code_gen_req.compiler_version.patch}{code_gen_req.compiler_version.suffix}"

    code_generated = plugin_pb2.CodeGeneratorResponse()
    
    # 先遍历一遍进行声明
    for proto_file in code_gen_req.proto_file:
        log("-----------------------------------------------------")
        Declare(proto_file, 
                f".{proto_file.package}" if proto_file.package else "", 
                GetLuaModuleVariable(proto_file.name),
                GetLuaModuleVariable(proto_file.name) + "_desc")
        
    for proto_file in code_gen_req.proto_file:
        if proto_file.name in code_gen_req.file_to_generate:
            file_desc = code_generated.file.add()
            file_desc.name = GetModuleName(proto_file.name) + "_desc.lua"
            file_desc.content = FileHead() + MessageToTable(proto_file)
            file_desc = code_generated.file.add()
            file_desc.name = GetModuleName(proto_file.name) + ".lua"
            file_desc.content = FileHead() + GenerateLua(proto_file)
                
    sys.stdout.buffer.write(code_generated.SerializeToString())
