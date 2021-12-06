#!/usr/bin/env python3
# -*- encoding:utf8 -*-
# protoc-gen-lua
# Google's Protocol Buffers project, ported to lua.
#
# Copyright (c) 2010 , Klarkxy 278370456@qq.com
# All rights reserved.
#
# Use, modification and distribution are subject to the "New BSD License"
# as listed at <url: http://www.opensource.org/licenses/bsd-license.php >.

import sys
import os
from io import StringIO
from black import json

import google.protobuf.compiler.plugin_pb2 as plugin_pb2
import google.protobuf.descriptor_pb2 as descriptor_pb2

from statements import *

PWD = os.path.abspath(os.path.split(__file__)[0])

DEBUG = False

def log(str: str) -> None:
    if DEBUG:
        print(str, file=sys.stderr)
        
def get_module_name(proto_path : str) -> str:
    """将xxx/yyy/zzz.proto转成 xxx_yyy_zzz_pb"""
    local = os.path.splitext(proto_path)[0] + "_pb"
    return "_".join(local.split("/"))

lua_type_name = {}
lua_value_name = {}

def declare(proto: descriptor_pb2.DescriptorProto | descriptor_pb2.EnumDescriptorProto | descriptor_pb2.FileDescriptorProto, proto_type: str, lua_type: str) -> None:
    """对整个DescriptorProto进行扫描"""
    # log(f"--- declare '{proto.name} --- {type(proto)} ---'")
    if not isinstance(proto, descriptor_pb2.FileDescriptorProto):
        log(f"declare '{proto_type}.{proto.name}' => {lua_type}.{proto.name}")
        lua_type_name[f"{proto_type}.{proto.name}"] = f"{lua_type}.{proto.name}"
    # 对每一个Message，递归声明一次
    if isinstance(proto, descriptor_pb2.DescriptorProto):
        for proto in proto.nested_type:
            declare(proto, f"{proto_type}.{proto.name}", f"{lua_type}.{proto.name}")
    if isinstance(proto, descriptor_pb2.FileDescriptorProto):
        for proto in proto.message_type:
            declare(proto, f"{proto_type}", f"{lua_type}")

class lua(object):
    def __init__(self, file: descriptor_pb2.FileDescriptorProto) -> None:
        super(lua, self).__init__()
        self.file = file
        self.filename = os.path.splitext(file.name)[0]
        self.package = file.package
        self.content = []
        self.local = get_module_name(file.name)

    def lua_filename(self) -> str:
        return self.filename + "_pb.lua"

    def p(self, str: str | statement) -> None:
        self.content.append(str)
    
    def gen_require(self) -> None:
        for require in self.file.dependency:
            log(f"Requiring {require}")
            module = get_module_name(require)
            require_path = os.path.splitext(require)[0] + "_pb"
            require_path = '.'.join(require_path.split("/"))    
            self.p(f"local {module} = require \"{require_path}\"")   

    def generate(self, proto: descriptor_pb2.DescriptorProto | descriptor_pb2.EnumDescriptorProto, prefix = []) -> dict:
        log(f"Generating '{proto.name}'")
        # 生成Enum
        if isinstance(proto, descriptor_pb2.EnumDescriptorProto):
            enums = {}
            for value in proto.value:
                enums[value.name] = value.number
            return enums
        # 生成Message
        msg = {}
        # 描述所有Enum
        for enum in proto.enum_type:
            msg[enum.name] = self.generate(enum, [*prefix, proto.name])
        # 描述所有Message
        for message in proto.nested_type:
            msg[message.name] = self.generate(message, [*prefix, proto.name])
        # 描述这个Message的构造
        fields = {}
        for field in proto.field:
            if field.label == descriptor_pb2.FieldDescriptorProto.Label.LABEL_REPEATED:
                fields[field.name] = []
            else:
                # 这里不处理required，在ParseFromString和SerializeToString的时候解决
                match field.type:
                    case descriptor_pb2.FieldDescriptorProto.Type.TYPE_MESSAGE:
                        # 如果是一个Message，那就需要对它进行构造
                        fields[field.name] = caller(lua_type_name[field.type_name])
                    case descriptor_pb2.FieldDescriptorProto.Type.TYPE_STRING:
                        fields[field.name] = ""
                    case descriptor_pb2.FieldDescriptorProto.Type.TYPE_BOOL:
                        fields[field.name] = False
                    case _:
                        fields[field.name] = 0
        msg[f"__call__"] = functional([], assignment("local message", fields), "return message")
        return msg

    def gen_file(self, need_generate: bool) -> str | None:
        log(f"--- Generating '{self.local}' ---")
        self.p("-- This file is generated by proto-gen-lua. DO NOT EDIT.")
        self.gen_require()
        # 建立一个对象来存这个包
        self.p(f"local {self.local} = {{}}")
        self.p("")
        # 描述所有全局Enum
        for enum in self.file.enum_type:
            self.p(assignment(f"{self.local}.{enum.name}", self.generate(enum)))
        # 描述所有全局Message
        for message in self.file.message_type:
            self.p(assignment(f"{self.local}.{message.name}", self.generate(message)))   
        # 结尾返回这个包
        self.p(f"return {self.local}")
        # 如果需要打印，那就打印出来
        if need_generate:
            w = writer()
            for line in self.content:
                if isinstance(line, statement):
                    w.p(line.gen())
                else:
                    w.p(line)
            return w.done()


if __name__ == "__main__":
    plugin_require_bin = sys.stdin.buffer.read()
    code_gen_req = plugin_pb2.CodeGeneratorRequest()
    code_gen_req.ParseFromString(plugin_require_bin)

    code_generated = plugin_pb2.CodeGeneratorResponse()
    
    for proto_file in code_gen_req.proto_file:
        declare(proto_file, "." + proto_file.package, get_module_name(proto_file.name))
        
    for proto_file in code_gen_req.proto_file:
        lua_file = lua(proto_file)
        
        file_desc = code_generated.file.add()
        file_desc.name = lua_file.lua_filename()
        file_desc.content = lua_file.gen_file(proto_file.name in code_gen_req.file_to_generate)
        
    sys.stdout.buffer.write(code_generated.SerializeToString())
