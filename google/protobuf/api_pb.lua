-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.1'
-- The proto-gen-lua version is 'Develop'
local protobuf = require "protobuf.protobuf"
local registry = require "protobuf.registry"

local google_protobuf_source_context_pb = require "google.protobuf.source_context_pb"
local google_protobuf_type_pb = require "google.protobuf.type_pb"

local google_protobuf_api_pb_desc = require "google.protobuf.api_pb_desc"

local google_protobuf_api_pb = {}

---@class google_protobuf_api_pb.Api : protobuf.Message
---@field name string
---@field methods google_protobuf_api_pb.Method[]
---@field options google_protobuf_type_pb.Option[]
---@field version string
---@field source_context google_protobuf_source_context_pb.SourceContext
---@field mixins google_protobuf_api_pb.Mixin[]
---@field syntax google_protobuf_type_pb.Syntax

---@class google_protobuf_api_pb.Method : protobuf.Message
---@field name string
---@field request_type_url string
---@field request_streaming boolean
---@field response_type_url string
---@field response_streaming boolean
---@field options google_protobuf_type_pb.Option[]
---@field syntax google_protobuf_type_pb.Syntax

---@class google_protobuf_api_pb.Mixin : protobuf.Message
---@field name string
---@field root string

---@type fun():google_protobuf_api_pb.Api
google_protobuf_api_pb.Api = protobuf.Message(google_protobuf_api_pb_desc.message_type[1])
google_protobuf_api_pb.Api._FullName = ".google.protobuf.Api"
google_protobuf_api_pb.Api._Descriptor = "google_protobuf_api_pb_desc.message_type[1]"
registry.RegistMessage(".google.protobuf.Api", google_protobuf_api_pb.Api)

---@type fun():google_protobuf_api_pb.Method
google_protobuf_api_pb.Method = protobuf.Message(google_protobuf_api_pb_desc.message_type[2])
google_protobuf_api_pb.Method._FullName = ".google.protobuf.Method"
google_protobuf_api_pb.Method._Descriptor = "google_protobuf_api_pb_desc.message_type[2]"
registry.RegistMessage(".google.protobuf.Method", google_protobuf_api_pb.Method)

---@type fun():google_protobuf_api_pb.Mixin
google_protobuf_api_pb.Mixin = protobuf.Message(google_protobuf_api_pb_desc.message_type[3])
google_protobuf_api_pb.Mixin._FullName = ".google.protobuf.Mixin"
google_protobuf_api_pb.Mixin._Descriptor = "google_protobuf_api_pb_desc.message_type[3]"
registry.RegistMessage(".google.protobuf.Mixin", google_protobuf_api_pb.Mixin)


return google_protobuf_api_pb
