if select(2, UnitClass('player')) ~= 'SHAMAN' then return end

local _G = _G

local TL, TC, TR = 'TOPLEFT', 'TOP', 'TOPRIGHT'
local ML, MC, MR = 'LEFT', 'CENTER', 'RIGHT'
local BL, BC, BR = 'BOTTOMLEFT', 'BOTTOM', 'BOTTOMRIGHT'

local addon = _G.idSpellButtons

local padding_totems = 3

-- air
local a1 = addon.create_button('Windfury Totem', MC, UIParent, MC, 400, -400)
local a2 = addon.create_button('Grounding Totem', ML, a1, MR, padding_totems, 0)
local a3 = addon.create_button('Wrath of Air Totem', ML, a1, MR, padding_totems, 0)
local a4 = addon.create_button('Nature Resistance Totem', ML, a1, MR, padding_totems, 0)
local a5 = addon.create_button('Sentry Totem', ML, a1, MR, padding_totems, 0)

-- earth
local e1 = addon.create_button('Strength of Earth Totem', TC, a1, BC, 0, padding_totems)
local e2 = addon.create_button('Tremor Totem', ML, e1, MR, padding_totems, 0)
local e3 = addon.create_button('Earthbind Totem', ML, e2, MR, padding_totems, 0)
local e4 = addon.create_button('Earth Elemental Totem', ML, e3, MR, padding_totems, 0)
local e5 = addon.create_button('Stoneclaw Totem', ML, e4, MR, padding_totems, 0)
local e6 = addon.create_button('Stoneskin Totem', ML, e5, MR, padding_totems, 0)

-- fire
local f1 = addon.create_button('Flametongue Totem', TC, e1, BC, 0, padding_totems)
local f2 = addon.create_button('Fire Nova Totem', ML, f1, MR, padding_totems, 0)
local f3 = addon.create_button('Magma Totem', ML, f2, MR, padding_totems, 0)
local f4 = addon.create_button('Searing Totem', ML, f3, MR, padding_totems, 0)
local f5 = addon.create_button('Fire Elemental Totem', ML, f4, MR, padding_totems, 0)
local f6 = addon.create_button('Frost Totem', ML, f5, MR, padding_totems, 0)

-- water
local w1 = addon.create_button('Mana Spring Totem', TC, f1, BC, 0, padding_totems)
local w2 = addon.create_button('Poison Cleansing Totem', ML, w1, MR, padding_totems, 0)
local w3 = addon.create_button('Disease Cleansing Totem', ML, w2, MR, padding_totems, 0)
local w4 = addon.create_button('Healing Stream Totem', ML, w3, MR, padding_totems, 0)
local w5 = addon.create_button('Fire Resistance Totem', ML, w4, MR, padding_totems, 0)

