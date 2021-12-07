-- This file is generated by proto-gen-lua. DO NOT EDIT.
local google_protobuf_descriptor_pb = require "google/protobuf/descriptor_pb"
local google_protobuf_compiler_plugin_pb = {}

google_protobuf_compiler_plugin_pb.Version = {
    major = 0,
    minor = 0,
    patch = 0,
    suffix = "",
}
google_protobuf_compiler_plugin_pb.Version.__call__ = function ()
    return setmetatable({}, google_protobuf_compiler_plugin_pb.Version)
end

google_protobuf_compiler_plugin_pb.CodeGeneratorRequest = {
    file_to_generate = {},
    parameter = "",
    proto_file = {},
    compiler_version = {},
}
google_protobuf_compiler_plugin_pb.CodeGeneratorRequest.__call__ = function ()
    return setmetatable({}, google_protobuf_compiler_plugin_pb.CodeGeneratorRequest)
end

google_protobuf_compiler_plugin_pb.CodeGeneratorResponse = {
    error = "",
    supported_features = 0,
    file = {},
}
google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.__call__ = function ()
    return setmetatable({}, google_protobuf_compiler_plugin_pb.CodeGeneratorResponse)
end

google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.Feature = {
    FEATURE_NONE = 0,
    FEATURE_PROTO3_OPTIONAL = 1,
}

google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.File = {
    name = "",
    insertion_point = "",
    content = "",
    generated_code_info = {},
}
google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.File.__call__ = function ()
    return setmetatable({}, google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.File)
end

----------------- Descriptor -----------------

local google_protobuf_descriptor_pb = require "google/protobuf/descriptor_pb"
google_protobuf_compiler_plugin_pb.Version.major.Descriptor = {
    name = ".google.protobuf.compiler.Version.major",
    number = 1,
    label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL,
    type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_INT32,
    options = {
        packed = false,
    }
}
google_protobuf_compiler_plugin_pb.Version.minor.Descriptor = {
    name = ".google.protobuf.compiler.Version.minor",
    number = 2,
    label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL,
    type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_INT32,
    options = {
        packed = false,
    }
}
google_protobuf_compiler_plugin_pb.Version.patch.Descriptor = {
    name = ".google.protobuf.compiler.Version.patch",
    number = 3,
    label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL,
    type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_INT32,
    options = {
        packed = false,
    }
}
google_protobuf_compiler_plugin_pb.Version.suffix.Descriptor = {
    name = ".google.protobuf.compiler.Version.suffix",
    number = 4,
    label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL,
    type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_STRING,
    options = {
        packed = false,
    }
}
google_protobuf_compiler_plugin_pb.Version.Descriptor = {
    name = ".google.protobuf.compiler.Version",
    field = {
        google_protobuf_compiler_plugin_pb.Version.major.Descriptor,
        google_protobuf_compiler_plugin_pb.Version.minor.Descriptor,
        google_protobuf_compiler_plugin_pb.Version.patch.Descriptor,
        google_protobuf_compiler_plugin_pb.Version.suffix.Descriptor,
    },
}
google_protobuf_compiler_plugin_pb.CodeGeneratorRequest.file_to_generate.Descriptor = {
    name = ".google.protobuf.compiler.CodeGeneratorRequest.file_to_generate",
    number = 1,
    label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_REPEATED,
    type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_STRING,
    options = {
        packed = false,
    }
}
google_protobuf_compiler_plugin_pb.CodeGeneratorRequest.parameter.Descriptor = {
    name = ".google.protobuf.compiler.CodeGeneratorRequest.parameter",
    number = 2,
    label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL,
    type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_STRING,
    options = {
        packed = false,
    }
}
google_protobuf_compiler_plugin_pb.CodeGeneratorRequest.proto_file.Descriptor = {
    name = ".google.protobuf.compiler.CodeGeneratorRequest.proto_file",
    number = 15,
    label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_REPEATED,
    type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_MESSAGE,
    type_name = ".google.protobuf.FileDescriptorProto",
    options = {
        packed = false,
    }
}
google_protobuf_compiler_plugin_pb.CodeGeneratorRequest.compiler_version.Descriptor = {
    name = ".google.protobuf.compiler.CodeGeneratorRequest.compiler_version",
    number = 3,
    label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL,
    type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_MESSAGE,
    type_name = ".google.protobuf.compiler.Version",
    options = {
        packed = false,
    }
}
google_protobuf_compiler_plugin_pb.CodeGeneratorRequest.Descriptor = {
    name = ".google.protobuf.compiler.CodeGeneratorRequest",
    field = {
        google_protobuf_compiler_plugin_pb.CodeGeneratorRequest.file_to_generate.Descriptor,
        google_protobuf_compiler_plugin_pb.CodeGeneratorRequest.parameter.Descriptor,
        google_protobuf_compiler_plugin_pb.CodeGeneratorRequest.proto_file.Descriptor,
        google_protobuf_compiler_plugin_pb.CodeGeneratorRequest.compiler_version.Descriptor,
    },
}
google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.Feature.Descriptor = {
    name = ".google.protobuf.compiler.CodeGeneratorResponse.Feature",
}
google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.File.name.Descriptor = {
    name = ".google.protobuf.compiler.CodeGeneratorResponse.File.name",
    number = 1,
    label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL,
    type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_STRING,
    options = {
        packed = false,
    }
}
google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.File.insertion_point.Descriptor = {
    name = ".google.protobuf.compiler.CodeGeneratorResponse.File.insertion_point",
    number = 2,
    label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL,
    type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_STRING,
    options = {
        packed = false,
    }
}
google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.File.content.Descriptor = {
    name = ".google.protobuf.compiler.CodeGeneratorResponse.File.content",
    number = 15,
    label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL,
    type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_STRING,
    options = {
        packed = false,
    }
}
google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.File.generated_code_info.Descriptor = {
    name = ".google.protobuf.compiler.CodeGeneratorResponse.File.generated_code_info",
    number = 16,
    label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL,
    type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_MESSAGE,
    type_name = ".google.protobuf.GeneratedCodeInfo",
    options = {
        packed = false,
    }
}
google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.File.Descriptor = {
    name = ".google.protobuf.compiler.CodeGeneratorResponse.File",
    field = {
        google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.File.name.Descriptor,
        google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.File.insertion_point.Descriptor,
        google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.File.content.Descriptor,
        google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.File.generated_code_info.Descriptor,
    },
}
google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.error.Descriptor = {
    name = ".google.protobuf.compiler.CodeGeneratorResponse.error",
    number = 1,
    label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL,
    type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_STRING,
    options = {
        packed = false,
    }
}
google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.supported_features.Descriptor = {
    name = ".google.protobuf.compiler.CodeGeneratorResponse.supported_features",
    number = 2,
    label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL,
    type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_UINT64,
    options = {
        packed = false,
    }
}
google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.file.Descriptor = {
    name = ".google.protobuf.compiler.CodeGeneratorResponse.file",
    number = 15,
    label = google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_REPEATED,
    type = google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_MESSAGE,
    type_name = ".google.protobuf.compiler.CodeGeneratorResponse.File",
    options = {
        packed = false,
    }
}
google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.Descriptor = {
    name = ".google.protobuf.compiler.CodeGeneratorResponse",
    field = {
        google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.error.Descriptor,
        google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.supported_features.Descriptor,
        google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.file.Descriptor,
    },
}
google_protobuf_compiler_plugin_pb.Descriptor = {
    name = "google/protobuf/compiler/plugin.proto",
    package = "google.protobuf.compiler",
    message_type = {
        google_protobuf_compiler_plugin_pb.Version.Descriptor,
        google_protobuf_compiler_plugin_pb.CodeGeneratorRequest.Descriptor,
        google_protobuf_compiler_plugin_pb.CodeGeneratorResponse.Descriptor,
    },
}
return google_protobuf_compiler_plugin_pb
