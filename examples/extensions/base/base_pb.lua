-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.1'
-- The proto-gen-lua version is 'Develop'
local protobuf = require "protobuf.protobuf"
local registry = require "protobuf.registry"


local extensions_base_base_pb_desc = require "extensions.base.base_pb_desc"

local extensions_base_base_pb = {}

---@class extensions_base_base_pb.BaseMessage : protobuf.Message
---@field field string

---@class extensions_base_base_pb.MessageSetWireFormatMessage : protobuf.Message

---@type fun():extensions_base_base_pb.BaseMessage
extensions_base_base_pb.BaseMessage = protobuf.Message(extensions_base_base_pb_desc.message_type[1])
extensions_base_base_pb.BaseMessage._FullName = ".goproto.protoc.extension.base.BaseMessage"
extensions_base_base_pb.BaseMessage._Descriptor = "extensions_base_base_pb_desc.message_type[1]"
registry.RegistMessage(".goproto.protoc.extension.base.BaseMessage", extensions_base_base_pb.BaseMessage)

---@type fun():extensions_base_base_pb.MessageSetWireFormatMessage
extensions_base_base_pb.MessageSetWireFormatMessage = protobuf.Message(extensions_base_base_pb_desc.message_type[2])
extensions_base_base_pb.MessageSetWireFormatMessage._FullName = ".goproto.protoc.extension.base.MessageSetWireFormatMessage"
extensions_base_base_pb.MessageSetWireFormatMessage._Descriptor = "extensions_base_base_pb_desc.message_type[2]"
registry.RegistMessage(".goproto.protoc.extension.base.MessageSetWireFormatMessage", extensions_base_base_pb.MessageSetWireFormatMessage)


return extensions_base_base_pb
