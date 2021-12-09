-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.1'
-- The proto-gen-lua version is 'Develop'
local protobuf_reflect = require "protobuf.reflect"


local proto2_enum_pb_desc = require "proto2.enum_pb_desc"

local proto2_enum_pb = {}

---@alias proto2_enum_pb.EnumType1
---| 'proto2_enum_pb.EnumType1.ONE' # = 1
---| 'proto2_enum_pb.EnumType1.TWO' # = 2

---@alias proto2_enum_pb.EnumType2
---| 'proto2_enum_pb.EnumType2.duplicate1' # = 1
---| 'proto2_enum_pb.EnumType2.duplicate2' # = 1

---@alias proto2_enum_pb.EnumContainerMessage1.NestedEnumType1A
---| 'proto2_enum_pb.EnumContainerMessage1.NestedEnumType1A.NESTED_1A_VALUE' # = 0

---@alias proto2_enum_pb.EnumContainerMessage1.NestedEnumType1B
---| 'proto2_enum_pb.EnumContainerMessage1.NestedEnumType1B.NESTED_1B_VALUE' # = 0

---@alias proto2_enum_pb.EnumContainerMessage1.EnumContainerMessage2.NestedEnumType2A
---| 'proto2_enum_pb.EnumContainerMessage1.EnumContainerMessage2.NestedEnumType2A.NESTED_2A_VALUE' # = 0

---@alias proto2_enum_pb.EnumContainerMessage1.EnumContainerMessage2.NestedEnumType2B
---| 'proto2_enum_pb.EnumContainerMessage1.EnumContainerMessage2.NestedEnumType2B.NESTED_2B_VALUE' # = 0

---@class proto2_enum_pb.EnumContainerMessage1.EnumContainerMessage2

---@class proto2_enum_pb.EnumContainerMessage1
---@field default_duplicate1 proto2_enum_pb.EnumType2
---@field default_duplicate2 proto2_enum_pb.EnumType2

proto2_enum_pb.EnumType1 = protobuf_reflect.Enum(proto2_enum_pb_desc.enum_type[1])
proto2_enum_pb.EnumType1.ONE = 1
proto2_enum_pb.EnumType1.TWO = 2

proto2_enum_pb.EnumType2 = protobuf_reflect.Enum(proto2_enum_pb_desc.enum_type[2])
proto2_enum_pb.EnumType2.duplicate1 = 1
proto2_enum_pb.EnumType2.duplicate2 = 1

proto2_enum_pb.EnumContainerMessage1.NestedEnumType1A = protobuf_reflect.Enum(proto2_enum_pb_desc.message_type[1].enum_type[1])
proto2_enum_pb.EnumContainerMessage1.NestedEnumType1A.NESTED_1A_VALUE = 0

proto2_enum_pb.EnumContainerMessage1.NestedEnumType1B = protobuf_reflect.Enum(proto2_enum_pb_desc.message_type[1].enum_type[2])
proto2_enum_pb.EnumContainerMessage1.NestedEnumType1B.NESTED_1B_VALUE = 0

proto2_enum_pb.EnumContainerMessage1.EnumContainerMessage2.NestedEnumType2A = protobuf_reflect.Enum(proto2_enum_pb_desc.message_type[1].nested_type[1].enum_type[1])
proto2_enum_pb.EnumContainerMessage1.EnumContainerMessage2.NestedEnumType2A.NESTED_2A_VALUE = 0

proto2_enum_pb.EnumContainerMessage1.EnumContainerMessage2.NestedEnumType2B = protobuf_reflect.Enum(proto2_enum_pb_desc.message_type[1].nested_type[1].enum_type[2])
proto2_enum_pb.EnumContainerMessage1.EnumContainerMessage2.NestedEnumType2B.NESTED_2B_VALUE = 0

---@type fun():proto2_enum_pb.EnumContainerMessage1.EnumContainerMessage2 @New a '.goproto.protoc.proto2.EnumContainerMessage1.EnumContainerMessage2'
proto2_enum_pb.EnumContainerMessage1.EnumContainerMessage2 = protobuf_reflect.Message(proto2_enum_pb_desc.message_type[1].nested_type[1])

---@type fun():proto2_enum_pb.EnumContainerMessage1 @New a '.goproto.protoc.proto2.EnumContainerMessage1'
proto2_enum_pb.EnumContainerMessage1 = protobuf_reflect.Message(proto2_enum_pb_desc.message_type[1])


return proto2_enum_pb
