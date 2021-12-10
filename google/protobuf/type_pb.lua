-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.1'
-- The proto-gen-lua version is 'Develop'
local protobuf = require "protobuf.protobuf"
local registry = require "protobuf.registry"

local google_protobuf_any_pb = require "google.protobuf.any_pb"
local google_protobuf_source_context_pb = require "google.protobuf.source_context_pb"

local google_protobuf_type_pb_desc = require "google.protobuf.type_pb_desc"

local google_protobuf_type_pb = {}

---@alias google_protobuf_type_pb.Syntax
---| 'google_protobuf_type_pb.Syntax.SYNTAX_PROTO2' # = 0
---| 'google_protobuf_type_pb.Syntax.SYNTAX_PROTO3' # = 1

---@class google_protobuf_type_pb.Type : protobuf.Message
---@field name string
---@field fields google_protobuf_type_pb.Field[]
---@field oneofs string[]
---@field options google_protobuf_type_pb.Option[]
---@field source_context google_protobuf_source_context_pb.SourceContext
---@field syntax google_protobuf_type_pb.Syntax

---@alias google_protobuf_type_pb.Field.Kind
---| 'google_protobuf_type_pb.Field.Kind.TYPE_UNKNOWN' # = 0
---| 'google_protobuf_type_pb.Field.Kind.TYPE_DOUBLE' # = 1
---| 'google_protobuf_type_pb.Field.Kind.TYPE_FLOAT' # = 2
---| 'google_protobuf_type_pb.Field.Kind.TYPE_INT64' # = 3
---| 'google_protobuf_type_pb.Field.Kind.TYPE_UINT64' # = 4
---| 'google_protobuf_type_pb.Field.Kind.TYPE_INT32' # = 5
---| 'google_protobuf_type_pb.Field.Kind.TYPE_FIXED64' # = 6
---| 'google_protobuf_type_pb.Field.Kind.TYPE_FIXED32' # = 7
---| 'google_protobuf_type_pb.Field.Kind.TYPE_BOOL' # = 8
---| 'google_protobuf_type_pb.Field.Kind.TYPE_STRING' # = 9
---| 'google_protobuf_type_pb.Field.Kind.TYPE_GROUP' # = 10
---| 'google_protobuf_type_pb.Field.Kind.TYPE_MESSAGE' # = 11
---| 'google_protobuf_type_pb.Field.Kind.TYPE_BYTES' # = 12
---| 'google_protobuf_type_pb.Field.Kind.TYPE_UINT32' # = 13
---| 'google_protobuf_type_pb.Field.Kind.TYPE_ENUM' # = 14
---| 'google_protobuf_type_pb.Field.Kind.TYPE_SFIXED32' # = 15
---| 'google_protobuf_type_pb.Field.Kind.TYPE_SFIXED64' # = 16
---| 'google_protobuf_type_pb.Field.Kind.TYPE_SINT32' # = 17
---| 'google_protobuf_type_pb.Field.Kind.TYPE_SINT64' # = 18

---@alias google_protobuf_type_pb.Field.Cardinality
---| 'google_protobuf_type_pb.Field.Cardinality.CARDINALITY_UNKNOWN' # = 0
---| 'google_protobuf_type_pb.Field.Cardinality.CARDINALITY_OPTIONAL' # = 1
---| 'google_protobuf_type_pb.Field.Cardinality.CARDINALITY_REQUIRED' # = 2
---| 'google_protobuf_type_pb.Field.Cardinality.CARDINALITY_REPEATED' # = 3

---@class google_protobuf_type_pb.Field : protobuf.Message
---@field kind google_protobuf_type_pb.Field.Kind
---@field cardinality google_protobuf_type_pb.Field.Cardinality
---@field number number
---@field name string
---@field type_url string
---@field oneof_index number
---@field packed boolean
---@field options google_protobuf_type_pb.Option[]
---@field json_name string
---@field default_value string

---@class google_protobuf_type_pb.Enum : protobuf.Message
---@field name string
---@field enumvalue google_protobuf_type_pb.EnumValue[]
---@field options google_protobuf_type_pb.Option[]
---@field source_context google_protobuf_source_context_pb.SourceContext
---@field syntax google_protobuf_type_pb.Syntax

---@class google_protobuf_type_pb.EnumValue : protobuf.Message
---@field name string
---@field number number
---@field options google_protobuf_type_pb.Option[]

---@class google_protobuf_type_pb.Option : protobuf.Message
---@field name string
---@field value google_protobuf_any_pb.Any

google_protobuf_type_pb.Syntax = {}
google_protobuf_type_pb.Syntax._FullName = ".google.protobuf.Syntax"
google_protobuf_type_pb.Syntax._Descriptor = "google_protobuf_type_pb_desc.enum_type[1]"
registry.RegistEnum(".google.protobuf.Syntax", google_protobuf_type_pb.Syntax)
google_protobuf_type_pb.Syntax.SYNTAX_PROTO2 = 0
google_protobuf_type_pb.Syntax.SYNTAX_PROTO3 = 1
google_protobuf_type_pb.Syntax[0] = ".google.protobuf.Syntax.SYNTAX_PROTO2"
google_protobuf_type_pb.Syntax[1] = ".google.protobuf.Syntax.SYNTAX_PROTO3"

---@type fun():google_protobuf_type_pb.Type
google_protobuf_type_pb.Type = protobuf.Message(google_protobuf_type_pb_desc.message_type[1])
google_protobuf_type_pb.Type._FullName = ".google.protobuf.Type"
google_protobuf_type_pb.Type._Descriptor = "google_protobuf_type_pb_desc.message_type[1]"
registry.RegistMessage(".google.protobuf.Type", google_protobuf_type_pb.Type)

google_protobuf_type_pb.Field.Kind = {}
google_protobuf_type_pb.Field.Kind._FullName = ".google.protobuf.Field.Kind"
google_protobuf_type_pb.Field.Kind._Descriptor = "google_protobuf_type_pb_desc.message_type[2].enum_type[1]"
registry.RegistEnum(".google.protobuf.Field.Kind", google_protobuf_type_pb.Field.Kind)
google_protobuf_type_pb.Field.Kind.TYPE_UNKNOWN = 0
google_protobuf_type_pb.Field.Kind.TYPE_DOUBLE = 1
google_protobuf_type_pb.Field.Kind.TYPE_FLOAT = 2
google_protobuf_type_pb.Field.Kind.TYPE_INT64 = 3
google_protobuf_type_pb.Field.Kind.TYPE_UINT64 = 4
google_protobuf_type_pb.Field.Kind.TYPE_INT32 = 5
google_protobuf_type_pb.Field.Kind.TYPE_FIXED64 = 6
google_protobuf_type_pb.Field.Kind.TYPE_FIXED32 = 7
google_protobuf_type_pb.Field.Kind.TYPE_BOOL = 8
google_protobuf_type_pb.Field.Kind.TYPE_STRING = 9
google_protobuf_type_pb.Field.Kind.TYPE_GROUP = 10
google_protobuf_type_pb.Field.Kind.TYPE_MESSAGE = 11
google_protobuf_type_pb.Field.Kind.TYPE_BYTES = 12
google_protobuf_type_pb.Field.Kind.TYPE_UINT32 = 13
google_protobuf_type_pb.Field.Kind.TYPE_ENUM = 14
google_protobuf_type_pb.Field.Kind.TYPE_SFIXED32 = 15
google_protobuf_type_pb.Field.Kind.TYPE_SFIXED64 = 16
google_protobuf_type_pb.Field.Kind.TYPE_SINT32 = 17
google_protobuf_type_pb.Field.Kind.TYPE_SINT64 = 18
google_protobuf_type_pb.Field.Kind[0] = ".google.protobuf.Field.Kind.TYPE_UNKNOWN"
google_protobuf_type_pb.Field.Kind[1] = ".google.protobuf.Field.Kind.TYPE_DOUBLE"
google_protobuf_type_pb.Field.Kind[2] = ".google.protobuf.Field.Kind.TYPE_FLOAT"
google_protobuf_type_pb.Field.Kind[3] = ".google.protobuf.Field.Kind.TYPE_INT64"
google_protobuf_type_pb.Field.Kind[4] = ".google.protobuf.Field.Kind.TYPE_UINT64"
google_protobuf_type_pb.Field.Kind[5] = ".google.protobuf.Field.Kind.TYPE_INT32"
google_protobuf_type_pb.Field.Kind[6] = ".google.protobuf.Field.Kind.TYPE_FIXED64"
google_protobuf_type_pb.Field.Kind[7] = ".google.protobuf.Field.Kind.TYPE_FIXED32"
google_protobuf_type_pb.Field.Kind[8] = ".google.protobuf.Field.Kind.TYPE_BOOL"
google_protobuf_type_pb.Field.Kind[9] = ".google.protobuf.Field.Kind.TYPE_STRING"
google_protobuf_type_pb.Field.Kind[10] = ".google.protobuf.Field.Kind.TYPE_GROUP"
google_protobuf_type_pb.Field.Kind[11] = ".google.protobuf.Field.Kind.TYPE_MESSAGE"
google_protobuf_type_pb.Field.Kind[12] = ".google.protobuf.Field.Kind.TYPE_BYTES"
google_protobuf_type_pb.Field.Kind[13] = ".google.protobuf.Field.Kind.TYPE_UINT32"
google_protobuf_type_pb.Field.Kind[14] = ".google.protobuf.Field.Kind.TYPE_ENUM"
google_protobuf_type_pb.Field.Kind[15] = ".google.protobuf.Field.Kind.TYPE_SFIXED32"
google_protobuf_type_pb.Field.Kind[16] = ".google.protobuf.Field.Kind.TYPE_SFIXED64"
google_protobuf_type_pb.Field.Kind[17] = ".google.protobuf.Field.Kind.TYPE_SINT32"
google_protobuf_type_pb.Field.Kind[18] = ".google.protobuf.Field.Kind.TYPE_SINT64"

google_protobuf_type_pb.Field.Cardinality = {}
google_protobuf_type_pb.Field.Cardinality._FullName = ".google.protobuf.Field.Cardinality"
google_protobuf_type_pb.Field.Cardinality._Descriptor = "google_protobuf_type_pb_desc.message_type[2].enum_type[2]"
registry.RegistEnum(".google.protobuf.Field.Cardinality", google_protobuf_type_pb.Field.Cardinality)
google_protobuf_type_pb.Field.Cardinality.CARDINALITY_UNKNOWN = 0
google_protobuf_type_pb.Field.Cardinality.CARDINALITY_OPTIONAL = 1
google_protobuf_type_pb.Field.Cardinality.CARDINALITY_REQUIRED = 2
google_protobuf_type_pb.Field.Cardinality.CARDINALITY_REPEATED = 3
google_protobuf_type_pb.Field.Cardinality[0] = ".google.protobuf.Field.Cardinality.CARDINALITY_UNKNOWN"
google_protobuf_type_pb.Field.Cardinality[1] = ".google.protobuf.Field.Cardinality.CARDINALITY_OPTIONAL"
google_protobuf_type_pb.Field.Cardinality[2] = ".google.protobuf.Field.Cardinality.CARDINALITY_REQUIRED"
google_protobuf_type_pb.Field.Cardinality[3] = ".google.protobuf.Field.Cardinality.CARDINALITY_REPEATED"

---@type fun():google_protobuf_type_pb.Field
google_protobuf_type_pb.Field = protobuf.Message(google_protobuf_type_pb_desc.message_type[2])
google_protobuf_type_pb.Field._FullName = ".google.protobuf.Field"
google_protobuf_type_pb.Field._Descriptor = "google_protobuf_type_pb_desc.message_type[2]"
registry.RegistMessage(".google.protobuf.Field", google_protobuf_type_pb.Field)

---@type fun():google_protobuf_type_pb.Enum
google_protobuf_type_pb.Enum = protobuf.Message(google_protobuf_type_pb_desc.message_type[3])
google_protobuf_type_pb.Enum._FullName = ".google.protobuf.Enum"
google_protobuf_type_pb.Enum._Descriptor = "google_protobuf_type_pb_desc.message_type[3]"
registry.RegistMessage(".google.protobuf.Enum", google_protobuf_type_pb.Enum)

---@type fun():google_protobuf_type_pb.EnumValue
google_protobuf_type_pb.EnumValue = protobuf.Message(google_protobuf_type_pb_desc.message_type[4])
google_protobuf_type_pb.EnumValue._FullName = ".google.protobuf.EnumValue"
google_protobuf_type_pb.EnumValue._Descriptor = "google_protobuf_type_pb_desc.message_type[4]"
registry.RegistMessage(".google.protobuf.EnumValue", google_protobuf_type_pb.EnumValue)

---@type fun():google_protobuf_type_pb.Option
google_protobuf_type_pb.Option = protobuf.Message(google_protobuf_type_pb_desc.message_type[5])
google_protobuf_type_pb.Option._FullName = ".google.protobuf.Option"
google_protobuf_type_pb.Option._Descriptor = "google_protobuf_type_pb_desc.message_type[5]"
registry.RegistMessage(".google.protobuf.Option", google_protobuf_type_pb.Option)


return google_protobuf_type_pb
