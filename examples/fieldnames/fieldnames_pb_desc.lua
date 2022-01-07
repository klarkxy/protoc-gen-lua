-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.2'
-- The proto-gen-lua version is 'Develop'

return {
    name = [[fieldnames/fieldnames.proto]],
    package = [[goproto.protoc.fieldnames]],
    message_type = {
        {
            name = [[Message]],
            field = {
                {
                    name = [[field_one]],
                    number = 1,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[fieldOne]],
                },
                {
                    name = [[FieldTwo]],
                    number = 2,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[FieldTwo]],
                },
                {
                    name = [[fieldThree]],
                    number = 3,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[fieldThree]],
                },
                {
                    name = [[field__four]],
                    number = 4,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[fieldFour]],
                },
                {
                    name = [[descriptor]],
                    number = 10,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[descriptor]],
                },
                {
                    name = [[marshal]],
                    number = 11,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[marshal]],
                },
                {
                    name = [[unmarshal]],
                    number = 12,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[unmarshal]],
                },
                {
                    name = [[proto_message]],
                    number = 13,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[protoMessage]],
                },
                {
                    name = [[CamelCase]],
                    number = 20,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[CamelCase]],
                },
                {
                    name = [[CamelCase_]],
                    number = 21,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[CamelCase]],
                },
                {
                    name = [[camel_case]],
                    number = 22,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[camelCase]],
                },
                {
                    name = [[CamelCase__]],
                    number = 23,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[CamelCase]],
                },
                {
                    name = [[get_name]],
                    number = 30,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[getName]],
                },
                {
                    name = [[name]],
                    number = 31,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[name]],
                },
                {
                    name = [[OneofConflictA]],
                    number = 40,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    oneof_index = 0,
                    json_name = [[OneofConflictA]],
                },
                {
                    name = [[oneof_no_conflict]],
                    number = 50,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    oneof_index = 1,
                    json_name = [[oneofNoConflict]],
                },
                {
                    name = [[OneofConflictB]],
                    number = 51,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    oneof_index = 1,
                    json_name = [[OneofConflictB]],
                },
                {
                    name = [[oneof_message_conflict]],
                    number = 60,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    oneof_index = 2,
                    json_name = [[oneofMessageConflict]],
                },
            },
            nested_type = {
                {
                    name = [[OneofMessageConflict]],
                },
            },
            oneof_decl = {
                {
                    name = [[oneof_conflict_a]],
                },
                {
                    name = [[oneof_conflict_b]],
                },
                {
                    name = [[oneof_conflict_c]],
                },
            },
        },
    },
    options = {
        go_package = [[google.golang.org/protobuf/cmd/protoc-gen-go/testdata/fieldnames]],
    },
}