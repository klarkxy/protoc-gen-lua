-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.2'
-- The proto-gen-lua version is 'Develop'

return {
    name = [[imports/test_import_all.proto]],
    package = [[test]],
    dependency = {
        [[imports/test_a_1/m1.proto]],
        [[imports/test_a_1/m2.proto]],
        [[imports/test_a_2/m3.proto]],
        [[imports/test_a_2/m4.proto]],
        [[imports/test_b_1/m1.proto]],
        [[imports/test_b_1/m2.proto]],
        [[imports/fmt/m.proto]],
    },
    message_type = {
        {
            name = [[All]],
            field = {
                {
                    name = [[am1]],
                    number = 1,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_MESSAGE]],
                    type_name = [[.test.a.M1]],
                    json_name = [[am1]],
                },
                {
                    name = [[am2]],
                    number = 2,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_MESSAGE]],
                    type_name = [[.test.a.M2]],
                    json_name = [[am2]],
                },
                {
                    name = [[bm1]],
                    number = 5,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_MESSAGE]],
                    type_name = [[.test.b.part1.M1]],
                    json_name = [[bm1]],
                },
                {
                    name = [[bm2]],
                    number = 6,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_MESSAGE]],
                    type_name = [[.test.b.part2.M2]],
                    json_name = [[bm2]],
                },
                {
                    name = [[fmt]],
                    number = 7,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_MESSAGE]],
                    type_name = [[.fmt.M]],
                    json_name = [[fmt]],
                },
            },
        },
    },
    options = {
        go_package = [[google.golang.org/protobuf/cmd/protoc-gen-go/testdata/imports]],
    },
    syntax = [[proto3]],
}