#  FILE:  plugin/core/base.py
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
#  CREATED:  2021-12-06 18:10:54 CST

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