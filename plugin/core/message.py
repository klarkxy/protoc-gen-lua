import google.protobuf.descriptor_pb2 as descriptor_pb2

from .writer import *
from .base import *
from .enum import *
from .constexpr import *

message_map = {}

class Field(Base):
    def __init__(self, file : descriptor_pb2.FileDescriptorProto, proto: descriptor_pb2.FieldDescriptorProto, proto_prefix: str, lua_prefix: str) -> None:
        assert isinstance(proto, descriptor_pb2.FieldDescriptorProto)
        super().__init__(file, proto, proto_prefix, lua_prefix)
        log(f"Declare Field '{self.proto_name}'")
        
    def generate(self, s : Writer):
        log(f"Generate Field '{self.proto_name}'")
        s.pi()
        s.pc(f"{self.lua_name.split('.')[-1]} = ")
        if self.proto.label == descriptor_pb2.FieldDescriptorProto.Label.LABEL_REPEATED:
            s.pc("{}")
        else:
            match self.proto.type: 
                case descriptor_pb2.FieldDescriptorProto.Type.TYPE_DOUBLE | descriptor_pb2.FieldDescriptorProto.Type.TYPE_FLOAT:
                    if self.proto.default_value:
                        s.pc(f"{float(self.proto.default_value)}")
                    else:
                        s.pc("0.0")
                case descriptor_pb2.FieldDescriptorProto.Type.TYPE_INT64 | descriptor_pb2.FieldDescriptorProto.Type.TYPE_UINT64 | descriptor_pb2.FieldDescriptorProto.Type.TYPE_INT32 | descriptor_pb2.FieldDescriptorProto.Type.TYPE_FIXED64 | descriptor_pb2.FieldDescriptorProto.Type.TYPE_FIXED32 | descriptor_pb2.FieldDescriptorProto.Type.TYPE_UINT32 | descriptor_pb2.FieldDescriptorProto.Type.TYPE_SFIXED32 | descriptor_pb2.FieldDescriptorProto.Type.TYPE_SFIXED64 | descriptor_pb2.FieldDescriptorProto.Type.TYPE_SINT32 | descriptor_pb2.FieldDescriptorProto.Type.TYPE_SINT64:
                    if self.proto.default_value:
                        s.pc(f"{int(self.proto.default_value)}")
                    else:
                        s.pc("0")
                case descriptor_pb2.FieldDescriptorProto.Type.TYPE_BOOL :
                    if self.proto.default_value == "true":
                        s.pc("true")
                    else:
                        s.pc("false")
                case descriptor_pb2.FieldDescriptorProto.Type.TYPE_STRING :
                    if self.proto.default_value:
                        s.pc(f"\"{self.proto.default_value}\"")
                    else:
                        s.pc("\"\"")
                case descriptor_pb2.FieldDescriptorProto.Type.TYPE_GROUP :
                    raise "Do not use TYPE_GROUP, use nested message types instead.\n See https://developers.google.cn/protocol-buffers/docs/overview#groups"
                case descriptor_pb2.FieldDescriptorProto.Type.TYPE_MESSAGE :
                    s.pc("{}")
                case descriptor_pb2.FieldDescriptorProto.Type.TYPE_BYTES :
                    if self.proto.default_value:
                        s.pc(f"\"{self.proto.default_value}\"")
                    else:
                        s.pc("\"\"")
                case descriptor_pb2.FieldDescriptorProto.Type.TYPE_ENUM :
                    if self.proto.default_value:
                        s.pc(f"{enum_value_map[self.proto.type_name + '.' + self.proto.default_value].lua_name}")
                    else:
                        s.pc(f"{enum_map[self.proto.type_name].default.lua_name}")
        s.pe()
            
    
    def descripte(self, s : Writer):
        log(f"Descripte Field '{self.proto_name}'")
        s.p(f"{self.lua_name.split('.')[-1]} = {{")
        with s:
            s.p(f"name = \"{self.proto_name}\",")
            s.p(f"number = {self.proto.number},")
            s.p(f"label = {proto_label_enum[self.proto.label]},")
            s.p(f"type = {proto_type_enum[self.proto.type]},")
            if self.proto.type_name:
                s.p(f"type_name = \"{self.proto.type_name}\",")
            if self.proto.oneof_index:
                s.p(f"oneof_index = {self.proto.oneof_index},")
            s.p(f"options = {{")
            with s:
                s.p(f"packed = {'true' if self.proto.options.packed else 'false'},")
            s.p("}")
        s.p("},")


class Message(Base):
    def __init__(self, file: descriptor_pb2.FileDescriptorProto, proto: descriptor_pb2.DescriptorProto, proto_prefix: str, lua_prefix: str) -> None:
        assert isinstance(proto, descriptor_pb2.DescriptorProto)
        super().__init__(file, proto, proto_prefix, lua_prefix)
        log(f"Declare Message '{self.proto_name}'")
        message_map[self.proto_name] = self
        self.enums = []
        for enm in self.proto.enum_type:
            self.enums.append(Enum(file, enm, self.proto_name, self.lua_name))
        self.messages = []
        for msg in self.proto.nested_type:
            self.messages.append(Message(file, msg, self.proto_name, self.lua_name))
        self.fields = []
        for field in self.proto.field:
            self.fields.append(Field(file, field, self.proto_name, self.lua_name))
    
    def generate(self, s : Writer) -> str:
        log(f"Generate Message '{self.proto_name}'")
        s.p("")
        s.p(f"{self.lua_name} = setmetatable({{}}, {{")
        with s:
            s.p("__call = function ()")
            with s:
                s.p("local default = {")
                with s.sub(end=",\n") as sub:
                    for field in self.fields:
                        field.generate(sub)
                s.p("}")               
                s.p(f"return setmetatable(default, {self.lua_name})")
            s.p(f"end")
        s.p("})")
        for enm in self.enums:
            enm.generate(s)
        for message in self.messages:
            message.generate(s)
        return s
        
    def descripte(self, s : Writer) -> str:
        log(f"Descripte Message '{self.proto_name}'")
        for enm in self.enums:
            enm.descripte(s)
        for message in self.messages:
            message.descripte(s)
        s.p(f"{self.lua_name}.Descriptor = {{")
        with s:
            s.p(f"name = \"{self.proto_name}\",")
            s.p(f"field = {{")
            with s:
                for field in self.fields:
                    field.descripte(s)
            s.p("},")
            if len(self.proto.oneof_decl) > 0:
                s.p(f"oneof_decl = {{")
                with s:
                    for oneof_decl in self.proto.oneof_decl:
                        s.p(f"\"{oneof_decl.name}\",")
                s.p("},")
        s.p("}")
        return s