-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.2'
-- The proto-gen-lua version is 'Develop'

local protobuf = require "protobuf.protobuf"
local registry = require "protobuf.registry"


local google_protobuf_timestamp_pb_desc = require "google.protobuf.timestamp_pb_desc"

local google_protobuf_timestamp_pb = {}

---@class google_protobuf_timestamp_pb.Timestamp : protobuf.Message
---@field seconds number
---@field nanos number

---@type fun():google_protobuf_timestamp_pb.Timestamp
google_protobuf_timestamp_pb.Timestamp = protobuf.Message(google_protobuf_timestamp_pb_desc.message_type[1])
google_protobuf_timestamp_pb.Timestamp._FullName = ".google.protobuf.Timestamp"
google_protobuf_timestamp_pb.Timestamp._Descriptor = "google_protobuf_timestamp_pb_desc.message_type[1]"
registry.RegistMessage(google_protobuf_timestamp_pb.Timestamp)


return google_protobuf_timestamp_pb
