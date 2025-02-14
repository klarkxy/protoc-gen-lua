-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.2'
-- The proto-gen-lua version is 'Develop'

local protobuf = require "protobuf.protobuf"
local registry = require "protobuf.registry"


local google_protobuf_descriptor_pb_desc = require "google.protobuf.descriptor_pb_desc"

local google_protobuf_descriptor_pb = {}

---@class google_protobuf_descriptor_pb.FileDescriptorSet : protobuf.Message
---@field file google_protobuf_descriptor_pb.FileDescriptorProto[]

---@class google_protobuf_descriptor_pb.FileDescriptorProto : protobuf.Message
---@field name string
---@field package string
---@field dependency string[]
---@field public_dependency number[]
---@field weak_dependency number[]
---@field message_type google_protobuf_descriptor_pb.DescriptorProto[]
---@field enum_type google_protobuf_descriptor_pb.EnumDescriptorProto[]
---@field service google_protobuf_descriptor_pb.ServiceDescriptorProto[]
---@field extension google_protobuf_descriptor_pb.FieldDescriptorProto[]
---@field options google_protobuf_descriptor_pb.FileOptions
---@field source_code_info google_protobuf_descriptor_pb.SourceCodeInfo
---@field syntax string

---@class google_protobuf_descriptor_pb.DescriptorProto.ExtensionRange : protobuf.Message
---@field start number
---@field end number
---@field options google_protobuf_descriptor_pb.ExtensionRangeOptions

---@class google_protobuf_descriptor_pb.DescriptorProto.ReservedRange : protobuf.Message
---@field start number
---@field end number

---@class google_protobuf_descriptor_pb.DescriptorProto : protobuf.Message
---@field name string
---@field field google_protobuf_descriptor_pb.FieldDescriptorProto[]
---@field extension google_protobuf_descriptor_pb.FieldDescriptorProto[]
---@field nested_type google_protobuf_descriptor_pb.DescriptorProto[]
---@field enum_type google_protobuf_descriptor_pb.EnumDescriptorProto[]
---@field extension_range google_protobuf_descriptor_pb.DescriptorProto.ExtensionRange[]
---@field oneof_decl google_protobuf_descriptor_pb.OneofDescriptorProto[]
---@field options google_protobuf_descriptor_pb.MessageOptions
---@field reserved_range google_protobuf_descriptor_pb.DescriptorProto.ReservedRange[]
---@field reserved_name string[]

---@class google_protobuf_descriptor_pb.ExtensionRangeOptions : protobuf.Message
---@field uninterpreted_option google_protobuf_descriptor_pb.UninterpretedOption[]

---@alias google_protobuf_descriptor_pb.FieldDescriptorProto.Type
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_DOUBLE' # = 1
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_FLOAT' # = 2
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_INT64' # = 3
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_UINT64' # = 4
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_INT32' # = 5
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_FIXED64' # = 6
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_FIXED32' # = 7
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_BOOL' # = 8
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_STRING' # = 9
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_GROUP' # = 10
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_MESSAGE' # = 11
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_BYTES' # = 12
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_UINT32' # = 13
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_ENUM' # = 14
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_SFIXED32' # = 15
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_SFIXED64' # = 16
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_SINT32' # = 17
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_SINT64' # = 18

---@alias google_protobuf_descriptor_pb.FieldDescriptorProto.Label
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL' # = 1
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_REQUIRED' # = 2
---| 'google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_REPEATED' # = 3

---@class google_protobuf_descriptor_pb.FieldDescriptorProto : protobuf.Message
---@field name string
---@field number number
---@field label google_protobuf_descriptor_pb.FieldDescriptorProto.Label
---@field type google_protobuf_descriptor_pb.FieldDescriptorProto.Type
---@field type_name string
---@field extendee string
---@field default_value string
---@field oneof_index number
---@field json_name string
---@field options google_protobuf_descriptor_pb.FieldOptions
---@field proto3_optional boolean

---@class google_protobuf_descriptor_pb.OneofDescriptorProto : protobuf.Message
---@field name string
---@field options google_protobuf_descriptor_pb.OneofOptions

---@class google_protobuf_descriptor_pb.EnumDescriptorProto.EnumReservedRange : protobuf.Message
---@field start number
---@field end number

---@class google_protobuf_descriptor_pb.EnumDescriptorProto : protobuf.Message
---@field name string
---@field value google_protobuf_descriptor_pb.EnumValueDescriptorProto[]
---@field options google_protobuf_descriptor_pb.EnumOptions
---@field reserved_range google_protobuf_descriptor_pb.EnumDescriptorProto.EnumReservedRange[]
---@field reserved_name string[]

---@class google_protobuf_descriptor_pb.EnumValueDescriptorProto : protobuf.Message
---@field name string
---@field number number
---@field options google_protobuf_descriptor_pb.EnumValueOptions

---@class google_protobuf_descriptor_pb.ServiceDescriptorProto : protobuf.Message
---@field name string
---@field method google_protobuf_descriptor_pb.MethodDescriptorProto[]
---@field options google_protobuf_descriptor_pb.ServiceOptions

---@class google_protobuf_descriptor_pb.MethodDescriptorProto : protobuf.Message
---@field name string
---@field input_type string
---@field output_type string
---@field options google_protobuf_descriptor_pb.MethodOptions
---@field client_streaming boolean
---@field server_streaming boolean

---@alias google_protobuf_descriptor_pb.FileOptions.OptimizeMode
---| 'google_protobuf_descriptor_pb.FileOptions.OptimizeMode.SPEED' # = 1
---| 'google_protobuf_descriptor_pb.FileOptions.OptimizeMode.CODE_SIZE' # = 2
---| 'google_protobuf_descriptor_pb.FileOptions.OptimizeMode.LITE_RUNTIME' # = 3

---@class google_protobuf_descriptor_pb.FileOptions : protobuf.Message
---@field java_package string
---@field java_outer_classname string
---@field java_multiple_files boolean
---@field java_generate_equals_and_hash boolean
---@field java_string_check_utf8 boolean
---@field optimize_for google_protobuf_descriptor_pb.FileOptions.OptimizeMode
---@field go_package string
---@field cc_generic_services boolean
---@field java_generic_services boolean
---@field py_generic_services boolean
---@field php_generic_services boolean
---@field deprecated boolean
---@field cc_enable_arenas boolean
---@field objc_class_prefix string
---@field csharp_namespace string
---@field swift_prefix string
---@field php_class_prefix string
---@field php_namespace string
---@field php_metadata_namespace string
---@field ruby_package string
---@field uninterpreted_option google_protobuf_descriptor_pb.UninterpretedOption[]

---@class google_protobuf_descriptor_pb.MessageOptions : protobuf.Message
---@field message_set_wire_format boolean
---@field no_standard_descriptor_accessor boolean
---@field deprecated boolean
---@field map_entry boolean
---@field uninterpreted_option google_protobuf_descriptor_pb.UninterpretedOption[]

---@alias google_protobuf_descriptor_pb.FieldOptions.CType
---| 'google_protobuf_descriptor_pb.FieldOptions.CType.STRING' # = 0
---| 'google_protobuf_descriptor_pb.FieldOptions.CType.CORD' # = 1
---| 'google_protobuf_descriptor_pb.FieldOptions.CType.STRING_PIECE' # = 2

---@alias google_protobuf_descriptor_pb.FieldOptions.JSType
---| 'google_protobuf_descriptor_pb.FieldOptions.JSType.JS_NORMAL' # = 0
---| 'google_protobuf_descriptor_pb.FieldOptions.JSType.JS_STRING' # = 1
---| 'google_protobuf_descriptor_pb.FieldOptions.JSType.JS_NUMBER' # = 2

---@class google_protobuf_descriptor_pb.FieldOptions : protobuf.Message
---@field ctype google_protobuf_descriptor_pb.FieldOptions.CType
---@field packed boolean
---@field jstype google_protobuf_descriptor_pb.FieldOptions.JSType
---@field lazy boolean
---@field deprecated boolean
---@field weak boolean
---@field uninterpreted_option google_protobuf_descriptor_pb.UninterpretedOption[]

---@class google_protobuf_descriptor_pb.OneofOptions : protobuf.Message
---@field uninterpreted_option google_protobuf_descriptor_pb.UninterpretedOption[]

---@class google_protobuf_descriptor_pb.EnumOptions : protobuf.Message
---@field allow_alias boolean
---@field deprecated boolean
---@field uninterpreted_option google_protobuf_descriptor_pb.UninterpretedOption[]

---@class google_protobuf_descriptor_pb.EnumValueOptions : protobuf.Message
---@field deprecated boolean
---@field uninterpreted_option google_protobuf_descriptor_pb.UninterpretedOption[]

---@class google_protobuf_descriptor_pb.ServiceOptions : protobuf.Message
---@field deprecated boolean
---@field uninterpreted_option google_protobuf_descriptor_pb.UninterpretedOption[]

---@alias google_protobuf_descriptor_pb.MethodOptions.IdempotencyLevel
---| 'google_protobuf_descriptor_pb.MethodOptions.IdempotencyLevel.IDEMPOTENCY_UNKNOWN' # = 0
---| 'google_protobuf_descriptor_pb.MethodOptions.IdempotencyLevel.NO_SIDE_EFFECTS' # = 1
---| 'google_protobuf_descriptor_pb.MethodOptions.IdempotencyLevel.IDEMPOTENT' # = 2

---@class google_protobuf_descriptor_pb.MethodOptions : protobuf.Message
---@field deprecated boolean
---@field idempotency_level google_protobuf_descriptor_pb.MethodOptions.IdempotencyLevel
---@field uninterpreted_option google_protobuf_descriptor_pb.UninterpretedOption[]

---@class google_protobuf_descriptor_pb.UninterpretedOption.NamePart : protobuf.Message
---@field name_part string
---@field is_extension boolean

---@class google_protobuf_descriptor_pb.UninterpretedOption : protobuf.Message
---@field name google_protobuf_descriptor_pb.UninterpretedOption.NamePart[]
---@field identifier_value string
---@field positive_int_value number
---@field negative_int_value number
---@field double_value number
---@field string_value string
---@field aggregate_value string

---@class google_protobuf_descriptor_pb.SourceCodeInfo.Location : protobuf.Message
---@field path number[]
---@field span number[]
---@field leading_comments string
---@field trailing_comments string
---@field leading_detached_comments string[]

---@class google_protobuf_descriptor_pb.SourceCodeInfo : protobuf.Message
---@field location google_protobuf_descriptor_pb.SourceCodeInfo.Location[]

---@class google_protobuf_descriptor_pb.GeneratedCodeInfo.Annotation : protobuf.Message
---@field path number[]
---@field source_file string
---@field begin number
---@field end number

---@class google_protobuf_descriptor_pb.GeneratedCodeInfo : protobuf.Message
---@field annotation google_protobuf_descriptor_pb.GeneratedCodeInfo.Annotation[]

---@type fun():google_protobuf_descriptor_pb.FileDescriptorSet
google_protobuf_descriptor_pb.FileDescriptorSet = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[1])
google_protobuf_descriptor_pb.FileDescriptorSet._FullName = ".google.protobuf.FileDescriptorSet"
google_protobuf_descriptor_pb.FileDescriptorSet._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[1]"
registry.RegistMessage(google_protobuf_descriptor_pb.FileDescriptorSet)

---@type fun():google_protobuf_descriptor_pb.FileDescriptorProto
google_protobuf_descriptor_pb.FileDescriptorProto = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[2])
google_protobuf_descriptor_pb.FileDescriptorProto._FullName = ".google.protobuf.FileDescriptorProto"
google_protobuf_descriptor_pb.FileDescriptorProto._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[2]"
registry.RegistMessage(google_protobuf_descriptor_pb.FileDescriptorProto)

---@type fun():google_protobuf_descriptor_pb.DescriptorProto.ExtensionRange
google_protobuf_descriptor_pb.DescriptorProto.ExtensionRange = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[3].nested_type[1])
google_protobuf_descriptor_pb.DescriptorProto.ExtensionRange._FullName = ".google.protobuf.DescriptorProto.ExtensionRange"
google_protobuf_descriptor_pb.DescriptorProto.ExtensionRange._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[3].nested_type[1]"
registry.RegistMessage(google_protobuf_descriptor_pb.DescriptorProto.ExtensionRange)

---@type fun():google_protobuf_descriptor_pb.DescriptorProto.ReservedRange
google_protobuf_descriptor_pb.DescriptorProto.ReservedRange = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[3].nested_type[2])
google_protobuf_descriptor_pb.DescriptorProto.ReservedRange._FullName = ".google.protobuf.DescriptorProto.ReservedRange"
google_protobuf_descriptor_pb.DescriptorProto.ReservedRange._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[3].nested_type[2]"
registry.RegistMessage(google_protobuf_descriptor_pb.DescriptorProto.ReservedRange)

---@type fun():google_protobuf_descriptor_pb.DescriptorProto
google_protobuf_descriptor_pb.DescriptorProto = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[3])
google_protobuf_descriptor_pb.DescriptorProto._FullName = ".google.protobuf.DescriptorProto"
google_protobuf_descriptor_pb.DescriptorProto._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[3]"
registry.RegistMessage(google_protobuf_descriptor_pb.DescriptorProto)

---@type fun():google_protobuf_descriptor_pb.ExtensionRangeOptions
google_protobuf_descriptor_pb.ExtensionRangeOptions = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[4])
google_protobuf_descriptor_pb.ExtensionRangeOptions._FullName = ".google.protobuf.ExtensionRangeOptions"
google_protobuf_descriptor_pb.ExtensionRangeOptions._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[4]"
registry.RegistMessage(google_protobuf_descriptor_pb.ExtensionRangeOptions)

google_protobuf_descriptor_pb.FieldDescriptorProto.Type = {}
google_protobuf_descriptor_pb.FieldDescriptorProto.Type._FullName = ".google.protobuf.FieldDescriptorProto.Type"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[5].enum_type[1]"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_DOUBLE = 1
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_FLOAT = 2
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_INT64 = 3
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_UINT64 = 4
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_INT32 = 5
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_FIXED64 = 6
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_FIXED32 = 7
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_BOOL = 8
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_STRING = 9
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_GROUP = 10
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_MESSAGE = 11
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_BYTES = 12
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_UINT32 = 13
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_ENUM = 14
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_SFIXED32 = 15
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_SFIXED64 = 16
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_SINT32 = 17
google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_SINT64 = 18
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[1] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_DOUBLE"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[2] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_FLOAT"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[3] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_INT64"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[4] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_UINT64"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[5] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_INT32"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[6] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_FIXED64"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[7] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_FIXED32"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[8] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_BOOL"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[9] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_STRING"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[10] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_GROUP"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[11] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_MESSAGE"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[12] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_BYTES"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[13] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_UINT32"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[14] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_ENUM"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[15] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_SFIXED32"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[16] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_SFIXED64"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[17] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_SINT32"
google_protobuf_descriptor_pb.FieldDescriptorProto.Type[18] = ".google.protobuf.FieldDescriptorProto.Type.TYPE_SINT64"
registry.RegistEnum(google_protobuf_descriptor_pb.FieldDescriptorProto.Type)

google_protobuf_descriptor_pb.FieldDescriptorProto.Label = {}
google_protobuf_descriptor_pb.FieldDescriptorProto.Label._FullName = ".google.protobuf.FieldDescriptorProto.Label"
google_protobuf_descriptor_pb.FieldDescriptorProto.Label._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[5].enum_type[2]"
google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL = 1
google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_REQUIRED = 2
google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_REPEATED = 3
google_protobuf_descriptor_pb.FieldDescriptorProto.Label[1] = ".google.protobuf.FieldDescriptorProto.Label.LABEL_OPTIONAL"
google_protobuf_descriptor_pb.FieldDescriptorProto.Label[2] = ".google.protobuf.FieldDescriptorProto.Label.LABEL_REQUIRED"
google_protobuf_descriptor_pb.FieldDescriptorProto.Label[3] = ".google.protobuf.FieldDescriptorProto.Label.LABEL_REPEATED"
registry.RegistEnum(google_protobuf_descriptor_pb.FieldDescriptorProto.Label)

---@type fun():google_protobuf_descriptor_pb.FieldDescriptorProto
google_protobuf_descriptor_pb.FieldDescriptorProto = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[5])
google_protobuf_descriptor_pb.FieldDescriptorProto._FullName = ".google.protobuf.FieldDescriptorProto"
google_protobuf_descriptor_pb.FieldDescriptorProto._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[5]"
registry.RegistMessage(google_protobuf_descriptor_pb.FieldDescriptorProto)

---@type fun():google_protobuf_descriptor_pb.OneofDescriptorProto
google_protobuf_descriptor_pb.OneofDescriptorProto = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[6])
google_protobuf_descriptor_pb.OneofDescriptorProto._FullName = ".google.protobuf.OneofDescriptorProto"
google_protobuf_descriptor_pb.OneofDescriptorProto._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[6]"
registry.RegistMessage(google_protobuf_descriptor_pb.OneofDescriptorProto)

---@type fun():google_protobuf_descriptor_pb.EnumDescriptorProto.EnumReservedRange
google_protobuf_descriptor_pb.EnumDescriptorProto.EnumReservedRange = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[7].nested_type[1])
google_protobuf_descriptor_pb.EnumDescriptorProto.EnumReservedRange._FullName = ".google.protobuf.EnumDescriptorProto.EnumReservedRange"
google_protobuf_descriptor_pb.EnumDescriptorProto.EnumReservedRange._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[7].nested_type[1]"
registry.RegistMessage(google_protobuf_descriptor_pb.EnumDescriptorProto.EnumReservedRange)

---@type fun():google_protobuf_descriptor_pb.EnumDescriptorProto
google_protobuf_descriptor_pb.EnumDescriptorProto = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[7])
google_protobuf_descriptor_pb.EnumDescriptorProto._FullName = ".google.protobuf.EnumDescriptorProto"
google_protobuf_descriptor_pb.EnumDescriptorProto._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[7]"
registry.RegistMessage(google_protobuf_descriptor_pb.EnumDescriptorProto)

---@type fun():google_protobuf_descriptor_pb.EnumValueDescriptorProto
google_protobuf_descriptor_pb.EnumValueDescriptorProto = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[8])
google_protobuf_descriptor_pb.EnumValueDescriptorProto._FullName = ".google.protobuf.EnumValueDescriptorProto"
google_protobuf_descriptor_pb.EnumValueDescriptorProto._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[8]"
registry.RegistMessage(google_protobuf_descriptor_pb.EnumValueDescriptorProto)

---@type fun():google_protobuf_descriptor_pb.ServiceDescriptorProto
google_protobuf_descriptor_pb.ServiceDescriptorProto = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[9])
google_protobuf_descriptor_pb.ServiceDescriptorProto._FullName = ".google.protobuf.ServiceDescriptorProto"
google_protobuf_descriptor_pb.ServiceDescriptorProto._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[9]"
registry.RegistMessage(google_protobuf_descriptor_pb.ServiceDescriptorProto)

---@type fun():google_protobuf_descriptor_pb.MethodDescriptorProto
google_protobuf_descriptor_pb.MethodDescriptorProto = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[10])
google_protobuf_descriptor_pb.MethodDescriptorProto._FullName = ".google.protobuf.MethodDescriptorProto"
google_protobuf_descriptor_pb.MethodDescriptorProto._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[10]"
registry.RegistMessage(google_protobuf_descriptor_pb.MethodDescriptorProto)

google_protobuf_descriptor_pb.FileOptions.OptimizeMode = {}
google_protobuf_descriptor_pb.FileOptions.OptimizeMode._FullName = ".google.protobuf.FileOptions.OptimizeMode"
google_protobuf_descriptor_pb.FileOptions.OptimizeMode._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[11].enum_type[1]"
google_protobuf_descriptor_pb.FileOptions.OptimizeMode.SPEED = 1
google_protobuf_descriptor_pb.FileOptions.OptimizeMode.CODE_SIZE = 2
google_protobuf_descriptor_pb.FileOptions.OptimizeMode.LITE_RUNTIME = 3
google_protobuf_descriptor_pb.FileOptions.OptimizeMode[1] = ".google.protobuf.FileOptions.OptimizeMode.SPEED"
google_protobuf_descriptor_pb.FileOptions.OptimizeMode[2] = ".google.protobuf.FileOptions.OptimizeMode.CODE_SIZE"
google_protobuf_descriptor_pb.FileOptions.OptimizeMode[3] = ".google.protobuf.FileOptions.OptimizeMode.LITE_RUNTIME"
registry.RegistEnum(google_protobuf_descriptor_pb.FileOptions.OptimizeMode)

---@type fun():google_protobuf_descriptor_pb.FileOptions
google_protobuf_descriptor_pb.FileOptions = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[11])
google_protobuf_descriptor_pb.FileOptions._FullName = ".google.protobuf.FileOptions"
google_protobuf_descriptor_pb.FileOptions._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[11]"
registry.RegistMessage(google_protobuf_descriptor_pb.FileOptions)

---@type fun():google_protobuf_descriptor_pb.MessageOptions
google_protobuf_descriptor_pb.MessageOptions = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[12])
google_protobuf_descriptor_pb.MessageOptions._FullName = ".google.protobuf.MessageOptions"
google_protobuf_descriptor_pb.MessageOptions._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[12]"
registry.RegistMessage(google_protobuf_descriptor_pb.MessageOptions)

google_protobuf_descriptor_pb.FieldOptions.CType = {}
google_protobuf_descriptor_pb.FieldOptions.CType._FullName = ".google.protobuf.FieldOptions.CType"
google_protobuf_descriptor_pb.FieldOptions.CType._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[13].enum_type[1]"
google_protobuf_descriptor_pb.FieldOptions.CType.STRING = 0
google_protobuf_descriptor_pb.FieldOptions.CType.CORD = 1
google_protobuf_descriptor_pb.FieldOptions.CType.STRING_PIECE = 2
google_protobuf_descriptor_pb.FieldOptions.CType[0] = ".google.protobuf.FieldOptions.CType.STRING"
google_protobuf_descriptor_pb.FieldOptions.CType[1] = ".google.protobuf.FieldOptions.CType.CORD"
google_protobuf_descriptor_pb.FieldOptions.CType[2] = ".google.protobuf.FieldOptions.CType.STRING_PIECE"
registry.RegistEnum(google_protobuf_descriptor_pb.FieldOptions.CType)

google_protobuf_descriptor_pb.FieldOptions.JSType = {}
google_protobuf_descriptor_pb.FieldOptions.JSType._FullName = ".google.protobuf.FieldOptions.JSType"
google_protobuf_descriptor_pb.FieldOptions.JSType._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[13].enum_type[2]"
google_protobuf_descriptor_pb.FieldOptions.JSType.JS_NORMAL = 0
google_protobuf_descriptor_pb.FieldOptions.JSType.JS_STRING = 1
google_protobuf_descriptor_pb.FieldOptions.JSType.JS_NUMBER = 2
google_protobuf_descriptor_pb.FieldOptions.JSType[0] = ".google.protobuf.FieldOptions.JSType.JS_NORMAL"
google_protobuf_descriptor_pb.FieldOptions.JSType[1] = ".google.protobuf.FieldOptions.JSType.JS_STRING"
google_protobuf_descriptor_pb.FieldOptions.JSType[2] = ".google.protobuf.FieldOptions.JSType.JS_NUMBER"
registry.RegistEnum(google_protobuf_descriptor_pb.FieldOptions.JSType)

---@type fun():google_protobuf_descriptor_pb.FieldOptions
google_protobuf_descriptor_pb.FieldOptions = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[13])
google_protobuf_descriptor_pb.FieldOptions._FullName = ".google.protobuf.FieldOptions"
google_protobuf_descriptor_pb.FieldOptions._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[13]"
registry.RegistMessage(google_protobuf_descriptor_pb.FieldOptions)

---@type fun():google_protobuf_descriptor_pb.OneofOptions
google_protobuf_descriptor_pb.OneofOptions = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[14])
google_protobuf_descriptor_pb.OneofOptions._FullName = ".google.protobuf.OneofOptions"
google_protobuf_descriptor_pb.OneofOptions._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[14]"
registry.RegistMessage(google_protobuf_descriptor_pb.OneofOptions)

---@type fun():google_protobuf_descriptor_pb.EnumOptions
google_protobuf_descriptor_pb.EnumOptions = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[15])
google_protobuf_descriptor_pb.EnumOptions._FullName = ".google.protobuf.EnumOptions"
google_protobuf_descriptor_pb.EnumOptions._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[15]"
registry.RegistMessage(google_protobuf_descriptor_pb.EnumOptions)

---@type fun():google_protobuf_descriptor_pb.EnumValueOptions
google_protobuf_descriptor_pb.EnumValueOptions = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[16])
google_protobuf_descriptor_pb.EnumValueOptions._FullName = ".google.protobuf.EnumValueOptions"
google_protobuf_descriptor_pb.EnumValueOptions._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[16]"
registry.RegistMessage(google_protobuf_descriptor_pb.EnumValueOptions)

---@type fun():google_protobuf_descriptor_pb.ServiceOptions
google_protobuf_descriptor_pb.ServiceOptions = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[17])
google_protobuf_descriptor_pb.ServiceOptions._FullName = ".google.protobuf.ServiceOptions"
google_protobuf_descriptor_pb.ServiceOptions._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[17]"
registry.RegistMessage(google_protobuf_descriptor_pb.ServiceOptions)

google_protobuf_descriptor_pb.MethodOptions.IdempotencyLevel = {}
google_protobuf_descriptor_pb.MethodOptions.IdempotencyLevel._FullName = ".google.protobuf.MethodOptions.IdempotencyLevel"
google_protobuf_descriptor_pb.MethodOptions.IdempotencyLevel._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[18].enum_type[1]"
google_protobuf_descriptor_pb.MethodOptions.IdempotencyLevel.IDEMPOTENCY_UNKNOWN = 0
google_protobuf_descriptor_pb.MethodOptions.IdempotencyLevel.NO_SIDE_EFFECTS = 1
google_protobuf_descriptor_pb.MethodOptions.IdempotencyLevel.IDEMPOTENT = 2
google_protobuf_descriptor_pb.MethodOptions.IdempotencyLevel[0] = ".google.protobuf.MethodOptions.IdempotencyLevel.IDEMPOTENCY_UNKNOWN"
google_protobuf_descriptor_pb.MethodOptions.IdempotencyLevel[1] = ".google.protobuf.MethodOptions.IdempotencyLevel.NO_SIDE_EFFECTS"
google_protobuf_descriptor_pb.MethodOptions.IdempotencyLevel[2] = ".google.protobuf.MethodOptions.IdempotencyLevel.IDEMPOTENT"
registry.RegistEnum(google_protobuf_descriptor_pb.MethodOptions.IdempotencyLevel)

---@type fun():google_protobuf_descriptor_pb.MethodOptions
google_protobuf_descriptor_pb.MethodOptions = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[18])
google_protobuf_descriptor_pb.MethodOptions._FullName = ".google.protobuf.MethodOptions"
google_protobuf_descriptor_pb.MethodOptions._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[18]"
registry.RegistMessage(google_protobuf_descriptor_pb.MethodOptions)

---@type fun():google_protobuf_descriptor_pb.UninterpretedOption.NamePart
google_protobuf_descriptor_pb.UninterpretedOption.NamePart = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[19].nested_type[1])
google_protobuf_descriptor_pb.UninterpretedOption.NamePart._FullName = ".google.protobuf.UninterpretedOption.NamePart"
google_protobuf_descriptor_pb.UninterpretedOption.NamePart._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[19].nested_type[1]"
registry.RegistMessage(google_protobuf_descriptor_pb.UninterpretedOption.NamePart)

---@type fun():google_protobuf_descriptor_pb.UninterpretedOption
google_protobuf_descriptor_pb.UninterpretedOption = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[19])
google_protobuf_descriptor_pb.UninterpretedOption._FullName = ".google.protobuf.UninterpretedOption"
google_protobuf_descriptor_pb.UninterpretedOption._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[19]"
registry.RegistMessage(google_protobuf_descriptor_pb.UninterpretedOption)

---@type fun():google_protobuf_descriptor_pb.SourceCodeInfo.Location
google_protobuf_descriptor_pb.SourceCodeInfo.Location = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[20].nested_type[1])
google_protobuf_descriptor_pb.SourceCodeInfo.Location._FullName = ".google.protobuf.SourceCodeInfo.Location"
google_protobuf_descriptor_pb.SourceCodeInfo.Location._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[20].nested_type[1]"
registry.RegistMessage(google_protobuf_descriptor_pb.SourceCodeInfo.Location)

---@type fun():google_protobuf_descriptor_pb.SourceCodeInfo
google_protobuf_descriptor_pb.SourceCodeInfo = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[20])
google_protobuf_descriptor_pb.SourceCodeInfo._FullName = ".google.protobuf.SourceCodeInfo"
google_protobuf_descriptor_pb.SourceCodeInfo._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[20]"
registry.RegistMessage(google_protobuf_descriptor_pb.SourceCodeInfo)

---@type fun():google_protobuf_descriptor_pb.GeneratedCodeInfo.Annotation
google_protobuf_descriptor_pb.GeneratedCodeInfo.Annotation = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[21].nested_type[1])
google_protobuf_descriptor_pb.GeneratedCodeInfo.Annotation._FullName = ".google.protobuf.GeneratedCodeInfo.Annotation"
google_protobuf_descriptor_pb.GeneratedCodeInfo.Annotation._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[21].nested_type[1]"
registry.RegistMessage(google_protobuf_descriptor_pb.GeneratedCodeInfo.Annotation)

---@type fun():google_protobuf_descriptor_pb.GeneratedCodeInfo
google_protobuf_descriptor_pb.GeneratedCodeInfo = protobuf.Message(google_protobuf_descriptor_pb_desc.message_type[21])
google_protobuf_descriptor_pb.GeneratedCodeInfo._FullName = ".google.protobuf.GeneratedCodeInfo"
google_protobuf_descriptor_pb.GeneratedCodeInfo._Descriptor = "google_protobuf_descriptor_pb_desc.message_type[21]"
registry.RegistMessage(google_protobuf_descriptor_pb.GeneratedCodeInfo)


return google_protobuf_descriptor_pb
