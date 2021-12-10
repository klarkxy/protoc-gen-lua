local registry = {}

registry.enum = {}
registry.message = {}

registry.RegistEnum = function (enum)
    registry.enum[enum._FullName] = enum
end

registry.RegistMessage = function (message)
    registry.message[message._FullName] = message
end

return registry