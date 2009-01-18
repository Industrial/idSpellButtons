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
	local button = CreateFrame('CheckButton', 'idSpellButtons_'..spellname, UIParent, 'SecureActionButtonTemplate, ActionButtonTemplate')
	local icon = _G['idSpellButtons_'..spellname..'Icon']
	local texture = _G['idSpellButtons_'..spellname..'NormalTexture2'] or _G['idSpellButtons_'..spellname..'NormalTexture']
	local checkedtexture = button:GetCheckedTexture()

	button:SetAttribute('type', 'spell')
	button:SetAttribute('spell', spellname)
	button:SetWidth(button_size)
	button:SetHeight(button_size)
	button:SetPoint(p1, p, p2, x, y)

	icon:SetTexture(select(3, GetSpellInfo(spellname)))
	icon:SetTexCoord(0.08,0.92,0.08,0.92)

	texture:SetTexCoord(0,0,0,0)

	checkedtexture:SetTexture()

	buttons[spellname] = button
	return button
end

eventframe:SetScript('OnEvent', onevent)
eventframe:RegisterEvent('PLAYER_LOGIN')

_G.idSpellButtons = addon

