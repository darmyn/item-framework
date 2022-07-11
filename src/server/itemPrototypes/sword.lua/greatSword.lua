local replicatedStorage = game:GetService("ReplicatedStorage")
local modules = replicatedStorage.modules
local item = require(modules.item)
local itemComponents = script.Parent.Parent.Parent.itemComponents
local meleeDamageComponent = require(itemComponents.meleeDamageComponent)

local greatSword = {} :: item.type & meleeDamageComponent.type

function greatSword:new()
    self.baseDamage = 5
    self.criticalHitDamage = 10
    self.hitsRequiredForCombo = 3
end

function greatSword:init()
    print("the greatSword is now active")
end

function greatSword:deinit()
    print("the greatSword is no longer active")
end

return greatSword