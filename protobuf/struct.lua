local registry = require "protobuf.registry"

local struct = {}



struct.Map = function (key_type, value_type)
    local meta = {}

    return setmetatable({}, meta)
end

return struct