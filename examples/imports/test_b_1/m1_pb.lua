-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.2'
-- The proto-gen-lua version is 'Develop'

local protobuf = require "protobuf.protobuf"
local registry = require "protobuf.registry"


local imports_test_b_1_m1_pb_desc = require "imports.test_b_1.m1_pb_desc"

local imports_test_b_1_m1_pb = {}

---@class imports_test_b_1_m1_pb.M1 : protobuf.Message

---@type fun():imports_test_b_1_m1_pb.M1
imports_test_b_1_m1_pb.M1 = protobuf.Message(imports_test_b_1_m1_pb_desc.message_type[1])
imports_test_b_1_m1_pb.M1._FullName = ".test.b.part1.M1"
imports_test_b_1_m1_pb.M1._Descriptor = "imports_test_b_1_m1_pb_desc.message_type[1]"
registry.RegistMessage(imports_test_b_1_m1_pb.M1)


return imports_test_b_1_m1_pb
