-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.1'
-- The proto-gen-lua version is 'Develop'
local protobuf_reflect = require "protobuf.reflect"

local import_public_sub_a_pb = require "import_public.sub.a_pb"

local import_public_b_pb_desc = require "import_public.b_pb_desc"

local import_public_b_pb = {}

---@class import_public_b_pb.Local
---@field m import_public_sub_a_pb.M
---@field e import_public_sub_a_pb.E

---@type fun():import_public_b_pb.Local @New a '.goproto.protoc.import_public.Local'
import_public_b_pb.Local = protobuf_reflect.Message(import_public_b_pb_desc.message_type[1])


return import_public_b_pb
