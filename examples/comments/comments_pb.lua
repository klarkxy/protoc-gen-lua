-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.1'
-- The proto-gen-lua version is 'Develop'
local protobuf_reflect = require "protobuf.reflect"


local comments_comments_pb_desc = require "comments.comments_pb_desc"

local comments_comments_pb = {}

---@alias comments_comments_pb.Enum1
---| 'comments_comments_pb.Enum1.FOO' # = 0
---| 'comments_comments_pb.Enum1.BAR' # = 1

---@class comments_comments_pb.Message1.Message1A

---@class comments_comments_pb.Message1.Message1B

---@class comments_comments_pb.Message1
---@field Field1A string
---@field Oneof1AField1 string

---@class comments_comments_pb.Message2.Message2A

---@class comments_comments_pb.Message2.Message2B

---@class comments_comments_pb.Message2

comments_comments_pb.Enum1 = protobuf_reflect.Enum(comments_comments_pb_desc.enum_type[1])
comments_comments_pb.Enum1.FOO = 0
comments_comments_pb.Enum1.BAR = 1

---@type fun():comments_comments_pb.Message1.Message1A @New a '.goproto.protoc.comments.Message1.Message1A'
comments_comments_pb.Message1.Message1A = protobuf_reflect.Message(comments_comments_pb_desc.message_type[1].nested_type[1])

---@type fun():comments_comments_pb.Message1.Message1B @New a '.goproto.protoc.comments.Message1.Message1B'
comments_comments_pb.Message1.Message1B = protobuf_reflect.Message(comments_comments_pb_desc.message_type[1].nested_type[2])

---@type fun():comments_comments_pb.Message1 @New a '.goproto.protoc.comments.Message1'
comments_comments_pb.Message1 = protobuf_reflect.Message(comments_comments_pb_desc.message_type[1])

---@type fun():comments_comments_pb.Message2.Message2A @New a '.goproto.protoc.comments.Message2.Message2A'
comments_comments_pb.Message2.Message2A = protobuf_reflect.Message(comments_comments_pb_desc.message_type[2].nested_type[1])

---@type fun():comments_comments_pb.Message2.Message2B @New a '.goproto.protoc.comments.Message2.Message2B'
comments_comments_pb.Message2.Message2B = protobuf_reflect.Message(comments_comments_pb_desc.message_type[2].nested_type[2])

---@type fun():comments_comments_pb.Message2 @New a '.goproto.protoc.comments.Message2'
comments_comments_pb.Message2 = protobuf_reflect.Message(comments_comments_pb_desc.message_type[2])


return comments_comments_pb
