-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.2'
-- The proto-gen-lua version is 'Develop'

return {
    name = [[google/protobuf/duration.proto]],
    package = [[google.protobuf]],
    message_type = {
        {
            name = [[Duration]],
            field = {
                {
                    name = [[seconds]],
                    number = 1,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_INT64]],
                    json_name = [[seconds]],
                },
                {
                    name = [[nanos]],
                    number = 2,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_INT32]],
                    json_name = [[nanos]],
                },
            },
        },
    },
    options = {
        java_package = [[com.google.protobuf]],
        java_outer_classname = [[DurationProto]],
        java_multiple_files = true,
        go_package = [[google.golang.org/protobuf/types/known/durationpb]],
        cc_enable_arenas = true,
        objc_class_prefix = [[GPB]],
        csharp_namespace = [[Google.Protobuf.WellKnownTypes]],
    },
    syntax = [[proto3]],
}