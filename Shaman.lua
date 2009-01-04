if select(2, UnitClass('player')) ~= 'SHAMAN' then return end

local _G = _G

local TL, TC, TR = 'TOPLEFT', 'TOP', 'TOPRIGHT'
local ML, MC, MR = 'LEFT', 'CENTER', 'RIGHT'
local BL, BC, BR = 'BOTTOMLEFT', 'BOTTOM', 'BOTTOMRIGHT'

local addon = _G.idSpellButtons

addon.create_button('Lightning Shield', MC, UIParent, MC, 0, -200)
