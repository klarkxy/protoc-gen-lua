-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.1'
-- The proto-gen-lua version is 'Develop'
local protobuf_reflect = require "protobuf.reflect"

local google_protobuf_descriptor_pb = require "google.protobuf.descriptor_pb"

local extensions_proto3_ext3_pb_desc = require "extensions.proto3.ext3_pb_desc"

local extensions_proto3_ext3_pb = {}

---@alias extensions_proto3_ext3_pb.Enum
---| 'extensions_proto3_ext3_pb.Enum.ZERO' # = 0

---@class extensions_proto3_ext3_pb.Message

extensions_proto3_ext3_pb.Enum = protobuf_reflect.Enum(extensions_proto3_ext3_pb_desc.enum_type[1])
extensions_proto3_ext3_pb.Enum.ZERO = 0

---@type fun():extensions_proto3_ext3_pb.Message @New a '.goproto.protoc.extension.proto3.Message'
extensions_proto3_ext3_pb.Message = protobuf_reflect.Message(extensions_proto3_ext3_pb_desc.message_type[1])


return extensions_proto3_ext3_pb
