-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.1'
-- The proto-gen-lua version is 'Develop'
return {
    name = [[nopackage/nopackage.proto]],
    message_type = {
        {
            name = [[Message]],
            field = {
                {
                    name = [[string_field]],
                    number = 1,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[stringField]],
                },
                {
                    name = [[enum_field]],
                    number = 2,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_ENUM]],
                    type_name = [[.Enum]],
                    default_value = [[ZERO]],
                    json_name = [[enumField]],
                },
            },
        },
    },
    enum_type = {
        {
            name = [[Enum]],
            value = {
                {
                    name = [[ZERO]],
                    number = 0,
                },
            },
        },
    },
    options = {
        go_package = [[google.golang.org/protobuf/cmd/protoc-gen-go/testdata/nopackage]],
    },
}