-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.2'
-- The proto-gen-lua version is 'Develop'

local protobuf = require "protobuf.protobuf"
local registry = require "protobuf.registry"


local google_protobuf_duration_pb_desc = require "google.protobuf.duration_pb_desc"

local google_protobuf_duration_pb = {}

---@class google_protobuf_duration_pb.Duration : protobuf.Message
---@field seconds number
---@field nanos number

---@type fun():google_protobuf_duration_pb.Duration
google_protobuf_duration_pb.Duration = protobuf.Message(google_protobuf_duration_pb_desc.message_type[1])
google_protobuf_duration_pb.Duration._FullName = ".google.protobuf.Duration"
google_protobuf_duration_pb.Duration._Descriptor = "google_protobuf_duration_pb_desc.message_type[1]"
registry.RegistMessage(google_protobuf_duration_pb.Duration)


return google_protobuf_duration_pb
