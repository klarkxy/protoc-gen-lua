-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.2'
-- The proto-gen-lua version is 'Develop'

return {
    name = [[google/protobuf/compiler/plugin.proto]],
    package = [[google.protobuf.compiler]],
    dependency = {
        [[google/protobuf/descriptor.proto]],
    },
    message_type = {
        {
            name = [[Version]],
            field = {
                {
                    name = [[major]],
                    number = 1,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_INT32]],
                    json_name = [[major]],
                },
                {
                    name = [[minor]],
                    number = 2,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_INT32]],
                    json_name = [[minor]],
                },
                {
                    name = [[patch]],
                    number = 3,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_INT32]],
                    json_name = [[patch]],
                },
                {
                    name = [[suffix]],
                    number = 4,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[suffix]],
                },
            },
        },
        {
            name = [[CodeGeneratorRequest]],
            field = {
                {
                    name = [[file_to_generate]],
                    number = 1,
                    label = [[LABEL_REPEATED]],
                    type = [[TYPE_STRING]],
                    json_name = [[fileToGenerate]],
                },
                {
                    name = [[parameter]],
                    number = 2,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[parameter]],
                },
                {
                    name = [[proto_file]],
                    number = 15,
                    label = [[LABEL_REPEATED]],
                    type = [[TYPE_MESSAGE]],
                    type_name = [[.google.protobuf.FileDescriptorProto]],
                    json_name = [[protoFile]],
                },
                {
                    name = [[compiler_version]],
                    number = 3,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_MESSAGE]],
                    type_name = [[.google.protobuf.compiler.Version]],
                    json_name = [[compilerVersion]],
                },
            },
        },
        {
            name = [[CodeGeneratorResponse]],
            field = {
                {
                    name = [[error]],
                    number = 1,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[error]],
                },
                {
                    name = [[supported_features]],
                    number = 2,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_UINT64]],
                    json_name = [[supportedFeatures]],
                },
                {
                    name = [[file]],
                    number = 15,
                    label = [[LABEL_REPEATED]],
                    type = [[TYPE_MESSAGE]],
                    type_name = [[.google.protobuf.compiler.CodeGeneratorResponse.File]],
                    json_name = [[file]],
                },
            },
            nested_type = {
                {
                    name = [[File]],
                    field = {
                        {
                            name = [[name]],
                            number = 1,
                            label = [[LABEL_OPTIONAL]],
                            type = [[TYPE_STRING]],
                            json_name = [[name]],
                        },
                        {
                            name = [[insertion_point]],
                            number = 2,
                            label = [[LABEL_OPTIONAL]],
                            type = [[TYPE_STRING]],
                            json_name = [[insertionPoint]],
                        },
                        {
                            name = [[content]],
                            number = 15,
                            label = [[LABEL_OPTIONAL]],
                            type = [[TYPE_STRING]],
                            json_name = [[content]],
                        },
                        {
                            name = [[generated_code_info]],
                            number = 16,
                            label = [[LABEL_OPTIONAL]],
                            type = [[TYPE_MESSAGE]],
                            type_name = [[.google.protobuf.GeneratedCodeInfo]],
                            json_name = [[generatedCodeInfo]],
                        },
                    },
                },
            },
            enum_type = {
                {
                    name = [[Feature]],
                    value = {
                        {
                            name = [[FEATURE_NONE]],
                            number = 0,
                        },
                        {
                            name = [[FEATURE_PROTO3_OPTIONAL]],
                            number = 1,
                        },
                    },
                },
            },
        },
    },
    options = {
        java_package = [[com.google.protobuf.compiler]],
        java_outer_classname = [[PluginProtos]],
        go_package = [[google.golang.org/protobuf/types/pluginpb]],
    },
}