#!/usr/bin/env python3
import os
import sys

from protoc.include.google.protobuf.compiler import plugin_pb2
from protoc.include.google.protobuf import descriptor_pb2
from jinja2 import FileSystemLoader,Environment

PWD = os.path.abspath(os.path.split(__file__)[0])

VERSION = "v0.0.0 dev"
    
jinja_env = Environment(loader=FileSystemLoader(PWD))
jinja_env.add_extension("jinja2.ext.do")
jinja_env.trim_blocks = True
jinja_env.lstrip_blocks = True
jinja_template = jinja_env.get_template("lua_pb.jinja")

def generate_lua_file(proto : descriptor_pb2.FileDescriptorProto, protoc_version : str = "Unknown") -> plugin_pb2.CodeGeneratorResponse.File:
    file = plugin_pb2.CodeGeneratorResponse.File()

    file.name = os.path.splitext(proto.name)[0] + "_pb.lua"
    file.content = jinja_template.render(
        protoc_version = protoc_version,
        protoc_gen_lua_version = VERSION,
        module_name = os.path.splitext(os.path.basename(proto.name))[0] + "_pb",
        proto = proto
    )
    return file

def protoc_gen_lua(req : plugin_pb2.CodeGeneratorRequest) -> plugin_pb2.CodeGeneratorResponse:
    res = plugin_pb2.CodeGeneratorResponse()
    
    protoc_version = f"v{req.compiler_version.major}.{req.compiler_version.minor}.{req.compiler_version.patch} {req.compiler_version.suffix}"
    for file in req.proto_file:
        res.file.append(generate_lua_file(file, protoc_version))
    return res


if __name__ == "__main__":
    data = sys.stdin.buffer.read()
    req = plugin_pb2.CodeGeneratorRequest()
    req.ParseFromString(data)
    res = protoc_gen_lua(req)
    sys.stdout.buffer.write(res.SerializeToString())
