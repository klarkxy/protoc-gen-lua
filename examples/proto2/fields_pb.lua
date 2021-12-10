-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.1'
-- The proto-gen-lua version is 'Develop'
local protobuf = require "protobuf.protobuf"
local registry = require "protobuf.registry"


local proto2_fields_pb_desc = require "proto2.fields_pb_desc"

local proto2_fields_pb = {}

---@alias proto2_fields_pb.FieldTestMessage.Enum
---| 'proto2_fields_pb.FieldTestMessage.Enum.ZERO' # = 0
---| 'proto2_fields_pb.FieldTestMessage.Enum.ONE' # = 1

---@class proto2_fields_pb.FieldTestMessage.OptionalGroup : protobuf.Message
---@field optional_group string

---@class proto2_fields_pb.FieldTestMessage.RequiredGroup : protobuf.Message
---@field required_group string

---@class proto2_fields_pb.FieldTestMessage.RepeatedGroup : protobuf.Message
---@field repeated_group string[]

---@class proto2_fields_pb.FieldTestMessage.MapInt32Int64Entry : protobuf.Message
---@field key number
---@field value number

---@class proto2_fields_pb.FieldTestMessage.MapStringMessageEntry : protobuf.Message
---@field key string
---@field value proto2_fields_pb.FieldTestMessage.Message

---@class proto2_fields_pb.FieldTestMessage.MapFixed64EnumEntry : protobuf.Message
---@field key number
---@field value proto2_fields_pb.FieldTestMessage.Enum

---@class proto2_fields_pb.FieldTestMessage.OneofGroup : protobuf.Message
---@field oneof_group_field string

---@class proto2_fields_pb.FieldTestMessage.Message : protobuf.Message

---@class proto2_fields_pb.FieldTestMessage : protobuf.Message
---@field optional_bool boolean
---@field optional_enum proto2_fields_pb.FieldTestMessage.Enum
---@field optional_int32 number
---@field optional_sint32 number
---@field optional_uint32 number
---@field optional_int64 number
---@field optional_sint64 number
---@field optional_uint64 number
---@field optional_sfixed32 number
---@field optional_fixed32 number
---@field optional_float number
---@field optional_sfixed64 number
---@field optional_fixed64 number
---@field optional_double number
---@field optional_string string
---@field optional_bytes string
---@field optional_Message proto2_fields_pb.FieldTestMessage.Message
---@field optionalgroup proto2_fields_pb.FieldTestMessage.OptionalGroup
---@field required_bool boolean
---@field required_enum proto2_fields_pb.FieldTestMessage.Enum
---@field required_int32 number
---@field required_sint32 number
---@field required_uint32 number
---@field required_int64 number
---@field required_sint64 number
---@field required_uint64 number
---@field required_sfixed32 number
---@field required_fixed32 number
---@field required_float number
---@field required_sfixed64 number
---@field required_fixed64 number
---@field required_double number
---@field required_string string
---@field required_bytes string
---@field required_Message proto2_fields_pb.FieldTestMessage.Message
---@field requiredgroup proto2_fields_pb.FieldTestMessage.RequiredGroup
---@field repeated_bool boolean[]
---@field repeated_enum proto2_fields_pb.FieldTestMessage.Enum[]
---@field repeated_int32 number[]
---@field repeated_sint32 number[]
---@field repeated_uint32 number[]
---@field repeated_int64 number[]
---@field repeated_sint64 number[]
---@field repeated_uint64 number[]
---@field repeated_sfixed32 number[]
---@field repeated_fixed32 number[]
---@field repeated_float number[]
---@field repeated_sfixed64 number[]
---@field repeated_fixed64 number[]
---@field repeated_double number[]
---@field repeated_string string[]
---@field repeated_bytes string[]
---@field repeated_Message proto2_fields_pb.FieldTestMessage.Message[]
---@field repeatedgroup proto2_fields_pb.FieldTestMessage.RepeatedGroup[]
---@field default_bool boolean
---@field default_enum proto2_fields_pb.FieldTestMessage.Enum
---@field default_int32 number
---@field default_sint32 number
---@field default_uint32 number
---@field default_int64 number
---@field default_sint64 number
---@field default_uint64 number
---@field default_sfixed32 number
---@field default_fixed32 number
---@field default_float number
---@field default_sfixed64 number
---@field default_fixed64 number
---@field default_double number
---@field default_string string
---@field default_bytes string
---@field default_zero_string string
---@field default_zero_bytes string
---@field default_float_neginf number
---@field default_float_posinf number
---@field default_float_nan number
---@field default_double_neginf number
---@field default_double_posinf number
---@field default_double_nan number
---@field map_int32_int64 dict<number, number>
---@field map_string_message dict<string, proto2_fields_pb.FieldTestMessage.Message>
---@field map_fixed64_enum dict<number, proto2_fields_pb.FieldTestMessage.Enum>
---@field oneof_bool boolean
---@field oneof_enum proto2_fields_pb.FieldTestMessage.Enum
---@field oneof_int32 number
---@field oneof_sint32 number
---@field oneof_uint32 number
---@field oneof_int64 number
---@field oneof_sint64 number
---@field oneof_uint64 number
---@field oneof_sfixed32 number
---@field oneof_fixed32 number
---@field oneof_float number
---@field oneof_sfixed64 number
---@field oneof_fixed64 number
---@field oneof_double number
---@field oneof_string string
---@field oneof_bytes string
---@field oneof_Message proto2_fields_pb.FieldTestMessage.Message
---@field oneofgroup proto2_fields_pb.FieldTestMessage.OneofGroup
---@field oneof_largest_tag number
---@field oneof_two_1 number
---@field oneof_two_2 number

proto2_fields_pb.FieldTestMessage.Enum = {}
proto2_fields_pb.FieldTestMessage.Enum._FullName = ".goproto.protoc.proto2.FieldTestMessage.Enum"
proto2_fields_pb.FieldTestMessage.Enum._Descriptor = "proto2_fields_pb_desc.message_type[1].enum_type[1]"
registry.RegistEnum(".goproto.protoc.proto2.FieldTestMessage.Enum", proto2_fields_pb.FieldTestMessage.Enum)
proto2_fields_pb.FieldTestMessage.Enum.ZERO = 0
proto2_fields_pb.FieldTestMessage.Enum.ONE = 1
proto2_fields_pb.FieldTestMessage.Enum[0] = ".goproto.protoc.proto2.FieldTestMessage.Enum.ZERO"
proto2_fields_pb.FieldTestMessage.Enum[1] = ".goproto.protoc.proto2.FieldTestMessage.Enum.ONE"

---@type fun():proto2_fields_pb.FieldTestMessage.OptionalGroup
proto2_fields_pb.FieldTestMessage.OptionalGroup = protobuf.Message(proto2_fields_pb_desc.message_type[1].nested_type[1])
proto2_fields_pb.FieldTestMessage.OptionalGroup._FullName = ".goproto.protoc.proto2.FieldTestMessage.OptionalGroup"
proto2_fields_pb.FieldTestMessage.OptionalGroup._Descriptor = "proto2_fields_pb_desc.message_type[1].nested_type[1]"
registry.RegistMessage(".goproto.protoc.proto2.FieldTestMessage.OptionalGroup", proto2_fields_pb.FieldTestMessage.OptionalGroup)

---@type fun():proto2_fields_pb.FieldTestMessage.RequiredGroup
proto2_fields_pb.FieldTestMessage.RequiredGroup = protobuf.Message(proto2_fields_pb_desc.message_type[1].nested_type[2])
proto2_fields_pb.FieldTestMessage.RequiredGroup._FullName = ".goproto.protoc.proto2.FieldTestMessage.RequiredGroup"
proto2_fields_pb.FieldTestMessage.RequiredGroup._Descriptor = "proto2_fields_pb_desc.message_type[1].nested_type[2]"
registry.RegistMessage(".goproto.protoc.proto2.FieldTestMessage.RequiredGroup", proto2_fields_pb.FieldTestMessage.RequiredGroup)

---@type fun():proto2_fields_pb.FieldTestMessage.RepeatedGroup
proto2_fields_pb.FieldTestMessage.RepeatedGroup = protobuf.Message(proto2_fields_pb_desc.message_type[1].nested_type[3])
proto2_fields_pb.FieldTestMessage.RepeatedGroup._FullName = ".goproto.protoc.proto2.FieldTestMessage.RepeatedGroup"
proto2_fields_pb.FieldTestMessage.RepeatedGroup._Descriptor = "proto2_fields_pb_desc.message_type[1].nested_type[3]"
registry.RegistMessage(".goproto.protoc.proto2.FieldTestMessage.RepeatedGroup", proto2_fields_pb.FieldTestMessage.RepeatedGroup)

---@type fun():proto2_fields_pb.FieldTestMessage.MapInt32Int64Entry
proto2_fields_pb.FieldTestMessage.MapInt32Int64Entry = protobuf.Message(proto2_fields_pb_desc.message_type[1].nested_type[4])
proto2_fields_pb.FieldTestMessage.MapInt32Int64Entry._FullName = ".goproto.protoc.proto2.FieldTestMessage.MapInt32Int64Entry"
proto2_fields_pb.FieldTestMessage.MapInt32Int64Entry._Descriptor = "proto2_fields_pb_desc.message_type[1].nested_type[4]"
registry.RegistMessage(".goproto.protoc.proto2.FieldTestMessage.MapInt32Int64Entry", proto2_fields_pb.FieldTestMessage.MapInt32Int64Entry)

---@type fun():proto2_fields_pb.FieldTestMessage.MapStringMessageEntry
proto2_fields_pb.FieldTestMessage.MapStringMessageEntry = protobuf.Message(proto2_fields_pb_desc.message_type[1].nested_type[5])
proto2_fields_pb.FieldTestMessage.MapStringMessageEntry._FullName = ".goproto.protoc.proto2.FieldTestMessage.MapStringMessageEntry"
proto2_fields_pb.FieldTestMessage.MapStringMessageEntry._Descriptor = "proto2_fields_pb_desc.message_type[1].nested_type[5]"
registry.RegistMessage(".goproto.protoc.proto2.FieldTestMessage.MapStringMessageEntry", proto2_fields_pb.FieldTestMessage.MapStringMessageEntry)

---@type fun():proto2_fields_pb.FieldTestMessage.MapFixed64EnumEntry
proto2_fields_pb.FieldTestMessage.MapFixed64EnumEntry = protobuf.Message(proto2_fields_pb_desc.message_type[1].nested_type[6])
proto2_fields_pb.FieldTestMessage.MapFixed64EnumEntry._FullName = ".goproto.protoc.proto2.FieldTestMessage.MapFixed64EnumEntry"
proto2_fields_pb.FieldTestMessage.MapFixed64EnumEntry._Descriptor = "proto2_fields_pb_desc.message_type[1].nested_type[6]"
registry.RegistMessage(".goproto.protoc.proto2.FieldTestMessage.MapFixed64EnumEntry", proto2_fields_pb.FieldTestMessage.MapFixed64EnumEntry)

---@type fun():proto2_fields_pb.FieldTestMessage.OneofGroup
proto2_fields_pb.FieldTestMessage.OneofGroup = protobuf.Message(proto2_fields_pb_desc.message_type[1].nested_type[7])
proto2_fields_pb.FieldTestMessage.OneofGroup._FullName = ".goproto.protoc.proto2.FieldTestMessage.OneofGroup"
proto2_fields_pb.FieldTestMessage.OneofGroup._Descriptor = "proto2_fields_pb_desc.message_type[1].nested_type[7]"
registry.RegistMessage(".goproto.protoc.proto2.FieldTestMessage.OneofGroup", proto2_fields_pb.FieldTestMessage.OneofGroup)

---@type fun():proto2_fields_pb.FieldTestMessage.Message
proto2_fields_pb.FieldTestMessage.Message = protobuf.Message(proto2_fields_pb_desc.message_type[1].nested_type[8])
proto2_fields_pb.FieldTestMessage.Message._FullName = ".goproto.protoc.proto2.FieldTestMessage.Message"
proto2_fields_pb.FieldTestMessage.Message._Descriptor = "proto2_fields_pb_desc.message_type[1].nested_type[8]"
registry.RegistMessage(".goproto.protoc.proto2.FieldTestMessage.Message", proto2_fields_pb.FieldTestMessage.Message)

---@type fun():proto2_fields_pb.FieldTestMessage
proto2_fields_pb.FieldTestMessage = protobuf.Message(proto2_fields_pb_desc.message_type[1])
proto2_fields_pb.FieldTestMessage._FullName = ".goproto.protoc.proto2.FieldTestMessage"
proto2_fields_pb.FieldTestMessage._Descriptor = "proto2_fields_pb_desc.message_type[1]"
registry.RegistMessage(".goproto.protoc.proto2.FieldTestMessage", proto2_fields_pb.FieldTestMessage)


return proto2_fields_pb
