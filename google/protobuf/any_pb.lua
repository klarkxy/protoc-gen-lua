-- This file is generated by proto-gen-lua. DO NOT EDIT.
local google_protobuf_any_pb = {}

google_protobuf_any_pb.Any = {
    type_url = "",
    value = "",
}
google_protobuf_any_pb.Any.__call__ = function ()
    return setmetatable({}, google_protobuf_any_pb.Any)
end

----------------- Descriptor -----------------

local google_protobuf_descriptor_pb = require "google/protobuf/descriptor_pb"
google_protobuf_any_pb.Any.type_url.Descriptor = {
    name = ".google.protobuf.Any.type_url",
    number = 1,
    label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL,
    type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_STRING,
    options = {
        packed = false,
    }
}
google_protobuf_any_pb.Any.value.Descriptor = {
    name = ".google.protobuf.Any.value",
    number = 2,
    label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL,
    type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_BYTES,
    options = {
        packed = false,
    }
}
google_protobuf_any_pb.Any.Descriptor = {
    name = ".google.protobuf.Any",
    field = {
        google_protobuf_any_pb.Any.type_url.Descriptor,
        google_protobuf_any_pb.Any.value.Descriptor,
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
