--[[if select(2, UnitClass('player')) ~= 'HUNTER' then return end

local _G = _G

local TL, TC, TR = 'TOPLEFT', 'TOP', 'TOPRIGHT'
local ML, MC, MR = 'LEFT', 'CENTER', 'RIGHT'
local BL, BC, BR = 'BOTTOMLEFT', 'BOTTOM', 'BOTTOMRIGHT'

local addon = _G.idSpellButtons
local c = addon.create_button

local padding_elements = 0
local padding_parts = 5

function addon:enable_class ()
	-- Aspects
	local a1 = c('Aspect of the Dragonhawk', MC, UIParent, MC, 450, 100)
	local a2 = c('Aspect of the Viper',      ML, a1, MR, padding_elements, 0)
	local a3 = c('Aspect of the Cheetah',    ML, a2, MR, padding_elements, 0)
	local a4 = c('Aspect of the Pack',       ML, a3, MR, padding_elements, 0)
	local a5 = c('Aspect of the Beast',      ML, a4, MR, padding_elements, 0)

	-- Pet Control
	local m1 = c('Mend Pet',         TC, a1, BC, 0, -padding_elements)
	local m2 = c('Feed Pet',         ML, m1, MR, padding_elements, 0)
	local m3 = c('Call Pet',         ML, m2, MR, padding_elements, 0)
	local m4 = c('Dismiss Pet',      ML, m3, MR, padding_elements, 0)
	local m5 = c('Call Stabled Pet', ML, m4, MR, padding_elements, 0)
	local m6 = c('Revive pet',       ML, m5, MR, padding_elements, 0)

	-- Traps
	local t1 = c('Freezing Trap',   TC, m1, BC, 0, -padding_elements)
	local t2 = c('Freezing Arrow',  ML, t1, MR, padding_elements, 0)
	local t3 = c('Frost Trap',      ML, t2, MR, padding_elements, 0)
	local t4 = c('Immolation Trap', ML, t3, MR, padding_elements, 0)
	local t5 = c('Explosive Trap',  ML, t4, MR, padding_elements, 0)
	local t6 = c('Snake Trap',      ML, t5, MR, padding_elements, 0)

	-- Misc Utility
	local u1 = c('Feign Death',        TC, t1, BC, 0, -padding_elements)
	local u2 = c('Misdirection',       ML, u1, MR, padding_elements, 0)
	local u3 = c('Tranquilizing Shot', ML, u2, MR, padding_elements, 0)
	local u4 = c('Flare',              ML, u3, MR, padding_elements, 0)
	local u5 = c('Scare Beast',        ML, u4, MR, padding_elements, 0)
	local u6 = c('Master\'s Call',     ML, u5, MR, padding_elements, 0)
end
]]
