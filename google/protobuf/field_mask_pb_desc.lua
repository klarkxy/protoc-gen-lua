-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.2'
-- The proto-gen-lua version is 'Develop'

return {
    name = [[google/protobuf/field_mask.proto]],
    package = [[google.protobuf]],
    message_type = {
        {
            name = [[FieldMask]],
            field = {
                {
                    name = [[paths]],
                    number = 1,
                    label = [[LABEL_REPEATED]],
                    type = [[TYPE_STRING]],
                    json_name = [[paths]],
                },
            },
        },
    },
    options = {
        java_package = [[com.google.protobuf]],
        java_outer_classname = [[FieldMaskProto]],
        java_multiple_files = true,
        go_package = [[google.golang.org/protobuf/types/known/fieldmaskpb]],
        cc_enable_arenas = true,
        objc_class_prefix = [[GPB]],
        csharp_namespace = [[Google.Protobuf.WellKnownTypes]],
    },
    syntax = [[proto3]],
}