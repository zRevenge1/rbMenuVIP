ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


-- Steam hex/identifier des personnes VIP/Autorisées 
-- (A voir dans la base de donnée > users) ou sur (https://steamid.pro/fr/)
-- Reboot nécessaire si ajout effectué
local vips = {
    'steam:11000014a996ed5', -- _ItsMeRevenge
    'steam:110000133589190', -- Mon 2eme compte mdr ban fivem sinon

    'steam:110000141f519fd', -- Esteban
    'steam:110000143a3c61a', -- Lucas
    'steam:11000011a254e75', -- Sam
    'steam:11000011aa06c78' -- Ruuru
}


--(--)--(--)--(--)--(--)--(--)
-- Pas touche
RegisterServerEvent('verifvip')
AddEventHandler('verifvip', function()
	local id = source
	if isVip(id) then
		TriggerClientEvent("setgroup", source)
	end
end)

-- Pas touche
function isVip(player)
    local allowed = false
    for i,id in ipairs(vips) do
        for x,pid in ipairs(GetPlayerIdentifiers(player)) do
            if string.lower(pid) == string.lower(id) then
                allowed = true
            end
        end
    end
    return allowed
end
