-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.1'
-- The proto-gen-lua version is 'Develop'
local google_protobuf_any_pb = {}

google_protobuf_any_pb.Any = setmetatable({}, {
    __call = function ()
        local default = {
            type_url = "",
            value = "",
        }
        return setmetatable(default, google_protobuf_any_pb.Any)
    end
})

----------------- Descriptor -----------------

local google_protobuf_descriptor_pb = require "google/protobuf/descriptor_pb"
google_protobuf_any_pb.Any.Descriptor = {
    name = ".google.protobuf.Any",
    field = {
        type_url = {
            name = ".google.protobuf.Any.type_url",
            number = 1,
            label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL,
            type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_STRING,
            options = {
                packed = false,
            }
        },
        value = {
            name = ".google.protobuf.Any.value",
            number = 2,
            label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL,
            type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_BYTES,
            options = {
                packed = false,
            }
        },
    },
}
google_protobuf_any_pb.Descriptor = {
    name = "google/protobuf/any.proto",
    package = "google.protobuf",
    message_type = {
        google_protobuf_any_pb.Any.Descriptor,
    },
}
return google_protobuf_any_pb
