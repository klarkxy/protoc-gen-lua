-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.2'
-- The proto-gen-lua version is 'Develop'

local protobuf = require "protobuf.protobuf"
local registry = require "protobuf.registry"

local import_public_sub_a_pb = require "import_public.sub.a_pb"
local import_public_b_pb = require "import_public.b_pb"

local import_public_a_pb_desc = require "import_public.a_pb_desc"

local import_public_a_pb = {}

---@class import_public_a_pb.Public : protobuf.Message
---@field m import_public_sub_a_pb.M
---@field e import_public_sub_a_pb.E
---@field local import_public_b_pb.Local

---@type fun():import_public_a_pb.Public
import_public_a_pb.Public = protobuf.Message(import_public_a_pb_desc.message_type[1])
import_public_a_pb.Public._FullName = ".goproto.protoc.import_public.Public"
import_public_a_pb.Public._Descriptor = "import_public_a_pb_desc.message_type[1]"
registry.RegistMessage(import_public_a_pb.Public)


return import_public_a_pb
