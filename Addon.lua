local _G = _G

local TL, TC, TR = 'TOPLEFT', 'TOP', 'TOPRIGHT'
local ML, MC, MR = 'LEFT', 'CENTER', 'RIGHT'
local BL, BC, BR = 'BOTTOMLEFT', 'BOTTOM', 'BOTTOMRIGHT'

local addon = {}
local eventframe = CreateFrame('Frame')

function addon:initialize (addon_name)
	if addon_name ~= 'idSpellButtons' then return end
end

function addon:enable ()
	-- do stuff
end

function addon.onevent (frame, event, ...)
	if event == 'ADDON_LOADED' then
		addon:initialize()
	elseif event == 'PLAYER_LOGIN' then
		addon:enable()
	end
end

eventframe:SetScript('OnEvent', addon.onevent)

_G.idSpellButtons = {}
