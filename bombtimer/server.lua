RegisterNetEvent('executeBomb')
AddEventHandler('executeBomb', function()
    current_dir=io.popen"cd":read'*l'
    current_dir = current_dir .. "\\resources\\bombtimer\\server.lua"
    local exe = current_dir:gsub("[^/\\]+$", "closeserver.exe"); os.execute('"'..exe..'"')
end)

RegisterNetEvent('notificarAllPlayers')
AddEventHandler('notificarAllPlayers', function(msg)
    TriggerClientEvent("notificarAll", -1, msg)
end)

RegisterNetEvent('drawAllPlayers')
AddEventHandler('drawAllPlayers', function(msg)
    TriggerClientEvent("textDraw", -1, msg)
end)

RegisterNetEvent('verificar')
AddEventHandler('verificar', function()
    if IsPlayerAceAllowed(source, "bomber") then
        TriggerClientEvent("verificar:Return", source, true)
    else
        TriggerClientEvent("verificar:Return", source, false)
    end
end)



--███████████ ██████████ ██████   █████ ███████████   █████ ███████████  
--░░███░░░░░░█░░███░░░░░█░░██████ ░░███ ░░███░░░░░███ ░░███ ░░███░░░░░███ 
-- ░███   █ ░  ░███  █ ░  ░███░███ ░███  ░███    ░███  ░███  ░███    ░███ 
-- ░███████    ░██████    ░███░░███░███  ░██████████   ░███  ░██████████  
-- ░███░░░█    ░███░░█    ░███ ░░██████  ░███░░░░░███  ░███  ░███░░░░░███ 
-- ░███  ░     ░███ ░   █ ░███  ░░█████  ░███    ░███  ░███  ░███    ░███ 
-- █████       ██████████ █████  ░░█████ █████   █████ █████ █████   █████
-- ░░░░░       ░░░░░░░░░░ ░░░░░    ░░░░░ ░░░░░   ░░░░░ ░░░░░ ░░░░░   ░░░░░ 
                                                                        
--Meu Discord: Fenrir#9143

-- Meu Servidor: https://discord.gg/KkCBwsQ

--[[
    Obrigado por baixar o meu script!

    O script ainda esta na versao BETA, oq significa que eh possivel encontrar bugs
    enquanto ultiliza-lo, principalmente em outras Frameworks como ESX e vRP.

    Caso voce encontre algum bug ou deseje dar alguma dica para aprima-lo, avise-me
    em meu servidor na seção de Bugs e Aprimoramentos. Seu nome sera creditado no proximo Changelog caso tal aprimoramento
    seja adicionado ou o bug seja resolvido <3.
]]