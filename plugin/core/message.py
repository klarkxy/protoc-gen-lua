import google.protobuf.descriptor_pb2 as descriptor_pb2
from .base import *
from .enum import *
from .constexpr import *

message_map = {}

class field(base):
    def __init__(self, file : descriptor_pb2.FileDescriptorProto, proto: descriptor_pb2.FieldDescriptorProto, proto_prefix: str, lua_prefix: str) -> None:
        assert isinstance(proto, descriptor_pb2.FieldDescriptorProto)
        super().__init__(file, proto, proto_prefix, lua_prefix)
        
    def generate(self) -> str:
        s = f"{self.lua_name} = "
        if self.label == descriptor_pb2.LABEL_REPEATED:
            s += "{}"
        else:
            match self.proto.type: 
                case descriptor_pb2.TYPE_DOUBLE | descriptor_pb2.TYPE_FLOAT:
                    if self.proto.default_value:
                        s += f"{float(self.proto.default_value)}"
                    else:
                        s += "0.0"
                case descriptor_pb2.TYPE_INT64 | descriptor_pb2.TYPE_UINT64 | descriptor_pb2.TYPE_INT32 | descriptor_pb2.TYPE_FIXED64 | descriptor_pb2.TYPE_FIXED32 | descriptor_pb2.TYPE_UINT32 | descriptor_pb2.TYPE_SFIXED32 | descriptor_pb2.TYPE_SFIXED64 | descriptor_pb2.TYPE_SINT32 | descriptor_pb2.TYPE_SINT64:
                    if self.proto.default_value:
                        s += f"{int(self.proto.default_value)}"
                    else:
                        s += "0"
                case descriptor_pb2.TYPE_BOOL :
                    if self.proto.default_value == "true":
                        s += "true"
                    else:
                        s += "false"
                case descriptor_pb2.TYPE_STRING :
                    if self.proto.default_value:
                        s += f"\"{self.proto.default_value}\""
                    else:
                        s += "\"\""
                case descriptor_pb2.TYPE_GROUP :
                    raise "Do not use TYPE_GROUP, use nested message types instead.\n See https://developers.google.cn/protocol-buffers/docs/overview#groups"
                case descriptor_pb2.TYPE_MESSAGE :
                    s += f"{message_map[self.proto.type_name].lua_name}()"
                case descriptor_pb2.TYPE_BYTES :
                    if self.proto.default_value:
                        s += f"\"{self.proto.default_value}\""
                    else:
                        s += "\"\""
                case descriptor_pb2.TYPE_ENUM :
                    if self.proto.default_value:
                        s += f"{enum_value_map[self.proto.type_name + '.' + self.proto.default_value].lua_name}"
                    else:
                        s += f"{enum_map[self.proto.type_name].default.lua_name}"
        return s
            
    
    def descripte(self) -> str:
        return f"""{self.lua_name}.Descriptor = {{    
    name = {self.proto.name},
    number = {self.proto.number},
    label = {proto_label_enum[self.proto.label]},
    type = {proto_type_enum[self.proto.type]},
    type_name = {self.proto.type_name},
    oneof_index = {self.proto.oneof_index},
    options = {{
        packed = {'true' if self.proto.options.packed else 'false'},
    }},
}}\n"""

class message(base):
    def __init__(self, file: descriptor_pb2.FileDescriptorProto, proto: descriptor_pb2.DescriptorProto, proto_prefix: str, lua_prefix: str) -> None:
        super().__init__(file, proto, proto_prefix, lua_prefix)