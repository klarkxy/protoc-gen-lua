-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.2'
-- The proto-gen-lua version is 'Develop'

return {
    name = [[imports/test_a_1/m1.proto]],
    package = [[test.a]],
    message_type = {
        {
            name = [[M1]],
        },
        {
            name = [[M1_1]],
            field = {
                {
                    name = [[m1]],
                    number = 1,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_MESSAGE]],
                    type_name = [[.test.a.M1]],
                    json_name = [[m1]],
                },
            },
        },
    },
    enum_type = {
        {
            name = [[E1]],
            value = {
                {
                    name = [[E1_ZERO]],
                    number = 0,
                },
            },
        },
    },
    options = {
        go_package = [[google.golang.org/protobuf/cmd/protoc-gen-go/testdata/imports/test_a_1]],
    },
    syntax = [[proto3]],
}