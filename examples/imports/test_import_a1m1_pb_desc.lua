-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.2'
-- The proto-gen-lua version is 'Develop'

return {
    name = [[imports/test_import_a1m1.proto]],
    package = [[test]],
    dependency = {
        [[imports/test_a_1/m1.proto]],
    },
    message_type = {
        {
            name = [[A1M1]],
            field = {
                {
                    name = [[f]],
                    number = 1,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_MESSAGE]],
                    type_name = [[.test.a.M1]],
                    json_name = [[f]],
                },
            },
        },
    },
    options = {
        go_package = [[google.golang.org/protobuf/cmd/protoc-gen-go/testdata/imports]],
    },
    syntax = [[proto3]],
}