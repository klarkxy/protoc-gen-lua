-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.2'
-- The proto-gen-lua version is 'Develop'

return {
    name = [[proto2/proto2.proto]],
    package = [[goproto.protoc.proto2]],
    message_type = {
        {
            name = [[Message]],
            field = {
                {
                    name = [[i32]],
                    number = 1,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_INT32]],
                    json_name = [[i32]],
                },
                {
                    name = [[m]],
                    number = 2,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_MESSAGE]],
                    type_name = [[.goproto.protoc.proto2.Message]],
                    json_name = [[m]],
                },
            },
        },
    },
    options = {
        go_package = [[google.golang.org/protobuf/cmd/protoc-gen-go/testdata/proto2]],
    },
}