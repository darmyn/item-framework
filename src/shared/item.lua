local item = {}
item.__index = item

function item.new(itemName)
    local self = setmetatable({}, item)
    self.properties = {}
    self.env = {}
    self.saved = {}
    return self
end

export type type = typeof(item.new())

function item:init()
    
end

--[[

    Interface

    The outermost object of the framework.
    Contains references to important directories and objects
    that are intended to be exposed to the user.

]]--
local interface = {}
interface.new = item.new
interface.systems = {
    server = nil,
    shared = nil,
    client = nil,
}
return interface