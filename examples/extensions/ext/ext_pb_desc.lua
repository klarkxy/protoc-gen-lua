-- This file is generated by proto-gen-lua. DO NOT EDIT.
-- The protoc version is 'v3.19.2'
-- The proto-gen-lua version is 'Develop'

return {
    name = [[extensions/ext/ext.proto]],
    package = [[goproto.protoc.extension.ext]],
    dependency = {
        [[extensions/base/base.proto]],
        [[extensions/extra/extra.proto]],
    },
    message_type = {
        {
            name = [[Message]],
            field = {
                {
                    name = [[data]],
                    number = 1,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_BYTES]],
                    json_name = [[data]],
                },
            },
            nested_type = {
                {
                    name = [[M]],
                },
            },
        },
        {
            name = [[ExtensionGroup]],
            field = {
                {
                    name = [[extension_group]],
                    number = 120,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[extensionGroup]],
                },
            },
        },
        {
            name = [[ExtendingMessage]],
            nested_type = {
                {
                    name = [[ExtendingMessageSubmessage]],
                },
            },
            extension = {
                {
                    name = [[extending_message_string]],
                    extendee = [[.goproto.protoc.extension.base.BaseMessage]],
                    number = 200,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_STRING]],
                    json_name = [[extendingMessageString]],
                },
                {
                    name = [[extending_message_submessage]],
                    extendee = [[.goproto.protoc.extension.base.BaseMessage]],
                    number = 201,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_MESSAGE]],
                    type_name = [[.goproto.protoc.extension.ext.ExtendingMessage.ExtendingMessageSubmessage]],
                    json_name = [[extendingMessageSubmessage]],
                },
            },
        },
        {
            name = [[RepeatedGroup]],
            field = {
                {
                    name = [[repeated_x_group]],
                    number = 319,
                    label = [[LABEL_REPEATED]],
                    type = [[TYPE_STRING]],
                    json_name = [[repeatedXGroup]],
                },
            },
        },
        {
            name = [[Extendable]],
            extension_range = {
                {
                    start = 1,
                    end_ = 536870912,
                },
            },
        },
        {
            name = [[MessageSetWireFormatExtension]],
            extension = {
                {
                    name = [[message_set_extension]],
                    extendee = [[.goproto.protoc.extension.base.MessageSetWireFormatMessage]],
                    number = 100,
                    label = [[LABEL_OPTIONAL]],
                    type = [[TYPE_MESSAGE]],
                    type_name = [[.goproto.protoc.extension.ext.MessageSetWireFormatExtension]],
                    json_name = [[messageSetExtension]],
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
    extension = {
        {
            name = [[extension_bool]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 101,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_BOOL]],
            json_name = [[extensionBool]],
        },
        {
            name = [[extension_enum]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 102,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_ENUM]],
            type_name = [[.goproto.protoc.extension.ext.Enum]],
            json_name = [[extensionEnum]],
        },
        {
            name = [[extension_int32]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 103,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_INT32]],
            json_name = [[extensionInt32]],
        },
        {
            name = [[extension_sint32]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 104,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_SINT32]],
            json_name = [[extensionSint32]],
        },
        {
            name = [[extension_uint32]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 105,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_UINT32]],
            json_name = [[extensionUint32]],
        },
        {
            name = [[extension_int64]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 106,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_INT64]],
            json_name = [[extensionInt64]],
        },
        {
            name = [[extension_sint64]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 107,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_SINT64]],
            json_name = [[extensionSint64]],
        },
        {
            name = [[extension_uint64]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 108,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_UINT64]],
            json_name = [[extensionUint64]],
        },
        {
            name = [[extension_sfixed32]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 109,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_SFIXED32]],
            json_name = [[extensionSfixed32]],
        },
        {
            name = [[extension_fixed32]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 110,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_FIXED32]],
            json_name = [[extensionFixed32]],
        },
        {
            name = [[extension_float]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 111,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_FLOAT]],
            json_name = [[extensionFloat]],
        },
        {
            name = [[extension_sfixed64]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 112,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_SFIXED64]],
            json_name = [[extensionSfixed64]],
        },
        {
            name = [[extension_fixed64]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 113,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_FIXED64]],
            json_name = [[extensionFixed64]],
        },
        {
            name = [[extension_double]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 114,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_DOUBLE]],
            json_name = [[extensionDouble]],
        },
        {
            name = [[extension_string]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 115,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_STRING]],
            json_name = [[extensionString]],
        },
        {
            name = [[extension_bytes]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 116,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_BYTES]],
            json_name = [[extensionBytes]],
        },
        {
            name = [[extension_Message]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 117,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_MESSAGE]],
            type_name = [[.goproto.protoc.extension.ext.Message]],
            json_name = [[extensionMessage]],
        },
        {
            name = [[extension_MessageM]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 118,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_MESSAGE]],
            type_name = [[.goproto.protoc.extension.ext.Message.M]],
            json_name = [[extensionMessageM]],
        },
        {
            name = [[extensiongroup]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 119,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_GROUP]],
            type_name = [[.goproto.protoc.extension.ext.ExtensionGroup]],
            json_name = [[extensiongroup]],
        },
        {
            name = [[extra_message]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 9,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_MESSAGE]],
            type_name = [[.goproto.protoc.extension.extra.ExtraMessage]],
            json_name = [[extraMessage]],
        },
        {
            name = [[repeated_x_bool]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 301,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_BOOL]],
            json_name = [[repeatedXBool]],
        },
        {
            name = [[repeated_x_enum]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 302,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_ENUM]],
            type_name = [[.goproto.protoc.extension.ext.Enum]],
            json_name = [[repeatedXEnum]],
        },
        {
            name = [[repeated_x_int32]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 303,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_INT32]],
            json_name = [[repeatedXInt32]],
        },
        {
            name = [[repeated_x_sint32]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 304,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_SINT32]],
            json_name = [[repeatedXSint32]],
        },
        {
            name = [[repeated_x_uint32]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 305,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_UINT32]],
            json_name = [[repeatedXUint32]],
        },
        {
            name = [[repeated_x_int64]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 306,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_INT64]],
            json_name = [[repeatedXInt64]],
        },
        {
            name = [[repeated_x_sint64]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 307,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_SINT64]],
            json_name = [[repeatedXSint64]],
        },
        {
            name = [[repeated_x_uint64]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 308,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_UINT64]],
            json_name = [[repeatedXUint64]],
        },
        {
            name = [[repeated_x_sfixed32]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 309,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_SFIXED32]],
            json_name = [[repeatedXSfixed32]],
        },
        {
            name = [[repeated_x_fixed32]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 310,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_FIXED32]],
            json_name = [[repeatedXFixed32]],
        },
        {
            name = [[repeated_x_float]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 311,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_FLOAT]],
            json_name = [[repeatedXFloat]],
        },
        {
            name = [[repeated_x_sfixed64]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 312,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_SFIXED64]],
            json_name = [[repeatedXSfixed64]],
        },
        {
            name = [[repeated_x_fixed64]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 313,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_FIXED64]],
            json_name = [[repeatedXFixed64]],
        },
        {
            name = [[repeated_x_double]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 314,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_DOUBLE]],
            json_name = [[repeatedXDouble]],
        },
        {
            name = [[repeated_x_string]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 315,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_STRING]],
            json_name = [[repeatedXString]],
        },
        {
            name = [[repeated_x_bytes]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 316,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_BYTES]],
            json_name = [[repeatedXBytes]],
        },
        {
            name = [[repeated_x_Message]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 317,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_MESSAGE]],
            type_name = [[.goproto.protoc.extension.ext.Message]],
            json_name = [[repeatedXMessage]],
        },
        {
            name = [[repeatedgroup]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 318,
            label = [[LABEL_REPEATED]],
            type = [[TYPE_GROUP]],
            type_name = [[.goproto.protoc.extension.ext.RepeatedGroup]],
            json_name = [[repeatedgroup]],
        },
        {
            name = [[extendable_field]],
            extendee = [[.goproto.protoc.extension.base.BaseMessage]],
            number = 400,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_MESSAGE]],
            type_name = [[.goproto.protoc.extension.ext.Extendable]],
            json_name = [[extendableField]],
        },
        {
            name = [[extendable_string_field]],
            extendee = [[.goproto.protoc.extension.ext.Extendable]],
            number = 1,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_STRING]],
            json_name = [[extendableStringField]],
        },
        {
            name = [[message_set_extension]],
            extendee = [[.goproto.protoc.extension.base.MessageSetWireFormatMessage]],
            number = 101,
            label = [[LABEL_OPTIONAL]],
            type = [[TYPE_MESSAGE]],
            type_name = [[.goproto.protoc.extension.ext.MessageSetWireFormatExtension]],
            json_name = [[messageSetExtension]],
        },
    },
    options = {
        go_package = [[google.golang.org/protobuf/cmd/protoc-gen-go/testdata/extensions/ext]],
    },
}