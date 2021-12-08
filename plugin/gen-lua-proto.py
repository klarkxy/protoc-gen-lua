#!/usr/bin/env python3
# -*- encoding:utf8 -*-

#  FILE:  gen-lua-proto.py
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
#  CREATED:  2021-12-02 15:46:11 CST

import os
import sys

PWD = os.path.abspath(os.path.split(__file__)[0])
PROTOC_DIR_PATH = os.path.join(PWD, "protoc")
INCLUDE_PATH = os.path.join(PROTOC_DIR_PATH, "include")
LUA_OUT_PATH = os.path.join(PWD, "..")
PROTOC = os.path.join(PROTOC_DIR_PATH, "bin", "protoc")
if sys.platform == "win32":
    PROTOC_GEN_LUA = os.path.join(PWD, "protoc-gen-lua.bat")
else:
    PROTOC_GEN_LUA = os.path.join(PWD, "protoc-gen-lua")

real_files = []
for root, dirs, files in os.walk(INCLUDE_PATH):
    for file in files:
        if file.endswith(".proto"):
            realfile = os.path.join(root, file)
            real_files.append(realfile)

cmd = f"{PROTOC} --plugin=protoc-gen-lua={PROTOC_GEN_LUA} --lua_out={LUA_OUT_PATH} --proto_path={INCLUDE_PATH} " + " ".join(real_files)
print(cmd)
os.system(cmd)
