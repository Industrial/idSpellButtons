if select(2, UnitClass('player')) ~= 'DEATH KNIGHT' then return end

local _G = _G

local TL, TC, TR = 'TOPLEFT', 'TOP', 'TOPRIGHT'
local ML, MC, MR = 'LEFT', 'CENTER', 'RIGHT'
local BL, BC, BR = 'BOTTOMLEFT', 'BOTTOM', 'BOTTOMRIGHT'

local addon = _G.idSpellButtons
local c = addon.create_button

local padding_elements = 1
local padding_parts = 5

function addon:enable_class ()
end

