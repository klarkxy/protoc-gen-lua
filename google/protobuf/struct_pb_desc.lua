-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.2'
-- The proto-gen-lua version is 'Develop'

return {
    name = [[google/protobuf/struct.proto]],
    package = [[google.protobuf]],
    message_type = {
        {
            name = [[Struct]],
            field = {
                {
                    name = [[fields]],
                    number = 1,
                    label = [[LABEL_REPEATED]],
                    type = [[TYPE_MESSAGE]],
                    type_name = [[.google.protobuf.Struct.FieldsEntry]],
                    json_name = [[fields]],
                },
            },
            nested_type = {
                {
                    name = [[FieldsEntry]],
                    field = {
                        {
                            name = [[key]],
                            number = 1,
                            label = [[LABEL_OPTIONAL]],
                            type = [[TYPE_STRING]],
                            json_name = [[key]],
                        },
                        {
                            name = [[value]],
                            number = 2,
                            label = [[LABEL_OPTIONAL]],
                            type = [[TYPE_MESSAGE]],
                            type_name = [[.google.protobuf.Value]],
                            json_name = [[value]],
                        },
                    },
                    options = {
                        map_entry = true,
                    },
                },
            },
        },
        {
            name = [[Value]],
            field = {
                {
                    name = [[null_value]],
                    number = 1,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_ENUM]],
                    type_name = [[.google.protobuf.NullValue]],
                    oneof_index = 0,
                    json_name = [[nullValue]],
                },
                {
                    name = [[number_value]],
                    number = 2,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_DOUBLE]],
                    oneof_index = 0,
                    json_name = [[numberValue]],
                },
                {
                    name = [[string_value]],
                    number = 3,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    oneof_index = 0,
                    json_name = [[stringValue]],
                },
                {
                    name = [[bool_value]],
                    number = 4,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_BOOL]],
                    oneof_index = 0,
                    json_name = [[boolValue]],
                },
                {
                    name = [[struct_value]],
                    number = 5,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_MESSAGE]],
                    type_name = [[.google.protobuf.Struct]],
                    oneof_index = 0,
                    json_name = [[structValue]],
                },
                {
                    name = [[list_value]],
                    number = 6,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_MESSAGE]],
                    type_name = [[.google.protobuf.ListValue]],
                    oneof_index = 0,
                    json_name = [[listValue]],
                },
            },
            oneof_decl = {
                {
                    name = [[kind]],
                },
            },
        },
        {
            name = [[ListValue]],
            field = {
                {
                    name = [[values]],
                    number = 1,
                    label = [[LABEL_REPEATED]],
                    type = [[TYPE_MESSAGE]],
                    type_name = [[.google.protobuf.Value]],
                    json_name = [[values]],
                },
            },
        },
    },
    enum_type = {
        {
            name = [[NullValue]],
            value = {
                {
                    name = [[NULL_VALUE]],
                    number = 0,
                },
            },
        },
    },
    options = {
        java_package = [[com.google.protobuf]],
        java_outer_classname = [[StructProto]],
        java_multiple_files = true,
        go_package = [[google.golang.org/protobuf/types/known/structpb]],
        cc_enable_arenas = true,
        objc_class_prefix = [[GPB]],
        csharp_namespace = [[Google.Protobuf.WellKnownTypes]],
    },
    syntax = [[proto3]],
}