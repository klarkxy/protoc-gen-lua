-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.1'
-- The proto-gen-lua version is 'Develop'
local protobuf = require "protobuf.protobuf"
local registry = require "protobuf.registry"


local proto2_nested_messages_pb_desc = require "proto2.nested_messages_pb_desc"

local proto2_nested_messages_pb = {}

---@class proto2_nested_messages_pb.Layer1.Layer2.Layer3 : protobuf.Message

---@class proto2_nested_messages_pb.Layer1.Layer2 : protobuf.Message
---@field l3 proto2_nested_messages_pb.Layer1.Layer2.Layer3

---@class proto2_nested_messages_pb.Layer1 : protobuf.Message
---@field l2 proto2_nested_messages_pb.Layer1.Layer2
---@field l3 proto2_nested_messages_pb.Layer1.Layer2.Layer3

---@type fun():proto2_nested_messages_pb.Layer1.Layer2.Layer3
proto2_nested_messages_pb.Layer1.Layer2.Layer3 = protobuf.Message(proto2_nested_messages_pb_desc.message_type[1].nested_type[1].nested_type[1])
proto2_nested_messages_pb.Layer1.Layer2.Layer3._FullName = ".goproto.protoc.proto2.Layer1.Layer2.Layer3"
proto2_nested_messages_pb.Layer1.Layer2.Layer3._Descriptor = "proto2_nested_messages_pb_desc.message_type[1].nested_type[1].nested_type[1]"
registry.RegistMessage(".goproto.protoc.proto2.Layer1.Layer2.Layer3", proto2_nested_messages_pb.Layer1.Layer2.Layer3)

---@type fun():proto2_nested_messages_pb.Layer1.Layer2
proto2_nested_messages_pb.Layer1.Layer2 = protobuf.Message(proto2_nested_messages_pb_desc.message_type[1].nested_type[1])
proto2_nested_messages_pb.Layer1.Layer2._FullName = ".goproto.protoc.proto2.Layer1.Layer2"
proto2_nested_messages_pb.Layer1.Layer2._Descriptor = "proto2_nested_messages_pb_desc.message_type[1].nested_type[1]"
registry.RegistMessage(".goproto.protoc.proto2.Layer1.Layer2", proto2_nested_messages_pb.Layer1.Layer2)

---@type fun():proto2_nested_messages_pb.Layer1
proto2_nested_messages_pb.Layer1 = protobuf.Message(proto2_nested_messages_pb_desc.message_type[1])
proto2_nested_messages_pb.Layer1._FullName = ".goproto.protoc.proto2.Layer1"
proto2_nested_messages_pb.Layer1._Descriptor = "proto2_nested_messages_pb_desc.message_type[1]"
registry.RegistMessage(".goproto.protoc.proto2.Layer1", proto2_nested_messages_pb.Layer1)


return proto2_nested_messages_pb
