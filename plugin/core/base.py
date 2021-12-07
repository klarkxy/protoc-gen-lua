import google.protobuf.descriptor_pb2 as descriptor_pb2
from google.protobuf.message import Message

from .writer import *

class Base:
    def __init__(self, file : descriptor_pb2.FileDescriptorProto, proto : Message, proto_prefix : str, lua_prefix : str) -> None:
        self.file = file
        self.proto = proto
        self.proto_name : str = proto_prefix + "." + proto.name
        if self.proto.name in LUA_KEYWORDS:
            self.lua_name : str = lua_prefix + "." + proto.name + "_"
        else:
            self.lua_name : str = lua_prefix + "." + proto.name
        
    def generate(self, s : Writer):
        raise f"Type '{type(self.proto)}' is not supported。"
    
    def descripte(self, s : Writer):
        raise f"Type '{type(self.proto)}' is not supported。"