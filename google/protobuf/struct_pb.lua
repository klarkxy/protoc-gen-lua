-- This file is generated by proto-gen-lua. DO NOT EDIT.
local google_protobuf_struct_pb = {}

google_protobuf_struct_pb.NullValue = {
    NULL_VALUE = 0,
}

google_protobuf_struct_pb.Struct = {
    FieldsEntry = {
        __call__ = function ()
            local message = {
                key = "",
                value = google_protobuf_struct_pb.Value(),
            }

            return message
        end,

    },

    __call__ = function ()
        local message = {
            fields = {},
        }

        return message
    end,

}

google_protobuf_struct_pb.Value = {
    __call__ = function ()
        local message = {
            null_value = 0,
            number_value = 0,
            string_value = "",
            bool_value = false,
            struct_value = google_protobuf_struct_pb.Struct(),
            list_value = google_protobuf_struct_pb.ListValue(),
        }

        return message
    end,

}

google_protobuf_struct_pb.ListValue = {
    __call__ = function ()
        local message = {
            values = {},
        }

        return message
    end,

}

return google_protobuf_struct_pb
