local protobuf_reflect = {}


---根据message_desc生成实际的构造器
---@param message_desc google_protobuf_descriptor_pb.DescriptorProto
protobuf_reflect.Message = function (message_desc)
    local meta = {}
    return setmetatable({}, meta)
end


---根据enum_desc生成实际的构造器
---@param enum_desc google_protobuf_descriptor_pb.EnumDescriptorProto
protobuf_reflect.Enum = function (enum_desc)
    local meta = {}
    return setmetatable({}, meta)
end


---将对应的file_desc注册进全局
---@param file_desc google_protobuf_descriptor_pb.FileDescriptorProto
protobuf_reflect.RegistFile = function (file_desc)
    
end


return protobuf_reflect