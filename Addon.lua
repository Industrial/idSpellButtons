local _G = _G

local TL, TC, TR = 'TOPLEFT', 'TOP', 'TOPRIGHT'
local ML, MC, MR = 'LEFT', 'CENTER', 'RIGHT'
local BL, BC, BR = 'BOTTOMLEFT', 'BOTTOM', 'BOTTOMRIGHT'

local eventframe = CreateFrame('Frame')
local addon = {}
local buttons = {}
local button_size = ActionButton1:GetWidth()

local onevent

function onevent (frame, event, ...)
	if event == 'PLAYER_LOGIN' then
		addon:enable()
	end
end

function addon:enable ()
	if self.enable_class then
		self:enable_class()
	else
		print('idSpellButtons: no class?')
	end
end

function addon.create_button (spellname, p1, p, p2, x, y)
	local button = CreateFrame('CheckButton', nil, UIParent, 'SecureActionButtonTemplate')
	local texture = button:CreateTexture(nil)

	button:SetAttribute('type', 'spell')
	button:SetAttribute('spell', spellname)

	button:SetWidth(button_size)
	button:SetHeight(button_size)

	button:SetPoint(p1, p, p2, x, y)

	texture:SetTexture(select(3, GetSpellInfo(spellname)))
	texture:SetAllPoints(button)

	button.texture = texture
	buttons[spellname] = button
	return button
end

eventframe:SetScript('OnEvent', onevent)
eventframe:RegisterEvent('PLAYER_LOGIN')

_G.idSpellButtons = addon

