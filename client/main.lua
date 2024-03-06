local actions = require 'config.actions'

-- Functions 

local function toggleUI(bool)
	SetNuiFocus(bool, bool)
	SendNUI("setVisible", bool)
end

-- NUICallbacks

RegisterNUICallback("initalize", function(_, cb)
	local locales = lib.getLocales()
	local playerName = GetPlayerName(PlayerId())
	local permission = "mod"

	local callbackData = {
		actions = actions,
		locales = locales,
		playerName = playerName,
		permission = permission,
	}

	cb(callbackData)
end)

RegisterNUICallback("hideUI", function(_, cb)
    toggleUI(false)
	cb(true)
end)

-- Trigger an action
---@param data table The data recvied from the nui to trigger an action
RegisterNUICallback("triggerAction", function(data, cb)
	local action = actions[data.key]
	local event = action.event
	local type = event:match(":(%w+):")
	local permission = action.permission
	local args = data?.args

	if type == "server" then
		TriggerServerEvent(event, permission, args)
	elseif type == "client" then
		TriggerEvent(event, permission, args)
	end

	cb(true)
end)

-- Commands 

RegisterCommand("admin", function()
	toggleUI(true)
end, false)
