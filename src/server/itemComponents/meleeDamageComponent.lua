local replicatedStorage = game:GetService("ReplicatedStorage")
local modules = replicatedStorage.modules
local item = require(modules.item)

-- can not do circular dependancy
-- need someway to know what the required values of the item are
-- inside of the item file.
-- but also want the user to have the ability to require item for it's type annotations

type meleeDamageComponent = {
    baseDamage: number,
    criticalHitDamage: number,
    hitsRequiredForCombo: number
}

local meleeDamageComponent = {} :: item.type & meleeDamageComponent

function meleeDamageComponent:init()
    
end

function meleeDamageComponent:deinit()
    
end

export type type = meleeDamageComponent
return meleeDamageComponent