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

from core import file, writer

PWD = os.path.abspath(os.path.split(__file__)[0])

if __name__ == "__main__":
    plugin_require_bin = sys.stdin.buffer.read()
    code_gen_req = plugin_pb2.CodeGeneratorRequest()
    code_gen_req.ParseFromString(plugin_require_bin)

    code_generated = plugin_pb2.CodeGeneratorResponse()
    
    for proto_file in code_gen_req.proto_file:
        file.File(proto_file)
        
    for name, lua_file in file.file_map.items():
        if name in code_gen_req.file_to_generate:
            file_desc = code_generated.file.add()
            file_desc.name = lua_file.file_name
            s = writer.Writer()
            lua_file.generate(s)
            file_desc.content = str(s)
        
    sys.stdout.buffer.write(code_generated.SerializeToString())
