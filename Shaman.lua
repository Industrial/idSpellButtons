if select(2, UnitClass('player')) ~= 'SHAMAN' then return end

local _G = _G

local TL, TC, TR = 'TOPLEFT', 'TOP', 'TOPRIGHT'
local ML, MC, MR = 'LEFT', 'CENTER', 'RIGHT'
local BL, BC, BR = 'BOTTOMLEFT', 'BOTTOM', 'BOTTOMRIGHT'

local addon = _G.idSpellButtons
local c = addon.create_button

local padding_elements = 1
local padding_parts = 5

-- totems
function addon:enable_class ()
	local a1 = c('Windfury Totem', MC, UIParent, MC, 450, 100)
	local a2 = c('Grounding Totem', ML, a1, MR, padding_elements, 0)
	local a3 = c('Wrath of Air Totem', ML, a2, MR, padding_elements, 0)
	local a4 = c('Nature Resistance Totem', ML, a3, MR, padding_elements, 0)
	local a5 = c('Sentry Totem', ML, a4, MR, padding_elements, 0)

	local e1 = c('Strength of Earth Totem', TC, a1, BC, 0, -padding_elements)
	local e2 = c('Tremor Totem', ML, e1, MR, padding_elements, 0)
	local e3 = c('Earthbind Totem', ML, e2, MR, padding_elements, 0)
	local e4 = c('Earth Elemental Totem', ML, e3, MR, padding_elements, 0)
	local e5 = c('Stoneclaw Totem', ML, e4, MR, padding_elements, 0)
	local e6 = c('Stoneskin Totem', ML, e5, MR, padding_elements, 0)

	local f1 = c('Flametongue Totem', TC, e1, BC, 0, -padding_elements)
	local f2 = c('Fire Nova Totem', ML, f1, MR, padding_elements, 0)
	local f3 = c('Magma Totem', ML, f2, MR, padding_elements, 0)
	local f4 = c('Searing Totem', ML, f3, MR, padding_elements, 0)
	local f5 = c('Fire Elemental Totem', ML, f4, MR, padding_elements, 0)
	local f6 = c('Frost Resistance Totem', ML, f5, MR, padding_elements, 0)
	local f7 = c('Totem of Wrath', ML, f6, MR, padding_elements, 0)

	local w1 = c('Mana Spring Totem', TC, f1, BC, 0, -padding_elements)
	local w2 = c('Poison Cleansing Totem', ML, w1, MR, padding_elements, 0)
	local w3 = c('Disease Cleansing Totem', ML, w2, MR, padding_elements, 0)
	local w4 = c('Healing Stream Totem', ML, w3, MR, padding_elements, 0)
	local w5 = c('Fire Resistance Totem', ML, w4, MR, padding_elements, 0)
	local w6 = c('Mana Tide Totem', ML, w5, MR, padding_elements, 0)

	local totemic_call = c('Totemic Call', MR, e1, ML, -padding_parts, -(padding_elements / 2 + e1:GetHeight() / 2))

	-- shields
	local water_shield = c('Water Shield', TC, w1, BC, 0, -padding_parts)
	local lightning_shield = c('Lightning Shield', ML, water_shield, MR, padding_elements, 0)
	local earth_shield = c('Earth Shield', ML, lightning_shield, MR, padding_elements, 0)

	-- weapon enchants
	local windfury_weapon = c('Windfury Weapon', TC, water_shield, BC, 0, -padding_parts)
	local flametongue_weapon = c('Flametongue Weapon', ML, windfury_weapon, MR, padding_elements, 0)
	local frostbrand_weapon = c('Frostbrand Weapon', ML, flametongue_weapon, MR, padding_elements, 0)
	local rockbiter_weapon = c('Rockbiter Weapon', ML, frostbrand_weapon, MR, padding_elements, 0)
	local earthliving_weapon = c('Earthliving Weapon', ML, rockbiter_weapon, MR, padding_elements, 0)

	-- other
	local shamanistic_rage = c('Shamanistic Rage', TC, windfury_weapon, BC, 0, -padding_parts)
	local feral_spirit = c('Feral Spirit', ML, shamanistic_rage, MR, padding_elements, 0)
	local heroism = c('Heroism', ML, feral_spirit, MR, padding_elements, 0)
end
