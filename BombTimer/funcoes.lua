function alerta(msg)
    SetTextComponentFormat("STRING")

    AddTextComponentString(msg)

    DisplayHelpTextFromStringLabel(0, 0, 0, -1)     
end

function notificar(msg)
    SetNotificationTextEntry("STRING")

    AddTextComponentString(msg)

    DrawNotification(0, 0, 0, -1)    
end

function LocalChat(msg)
    TriggerEvent('chat:addMessage', {
        color = {255,0,0}, 
        multiline = true, 
        args = {"[System]", msg}
    })
end

RegisterNetEvent('notificarAll')
AddEventHandler('notificarAll',function(message)
    SetNotificationTextEntry('STRING')

    AddTextComponentSubstringPlayerName(message)

    DrawNotification(false, true)
end)

RegisterNetEvent('textDraw')
AddEventHandler('textDraw',function(message)
    local x = false
    Citizen.CreateThread(function()
        while x == false do
            Citizen.Wait(5)
            SetTextFont(0)
            SetTextProportional(1)
            SetTextScale(1.2, 1.2)
            SetTextColour(255,0,0,255)
            SetTextEntry("STRING")
            SetTextCentre(1)
            AddTextComponentString(message)
            DrawText(0.5,0.5)
        end
    end)
    Citizen.Wait(3000)
    x = true
end)

--███████████ ██████████ ██████   █████ ███████████   █████ ███████████  
--░░███░░░░░░█░░███░░░░░█░░██████ ░░███ ░░███░░░░░███ ░░███ ░░███░░░░░███ 
-- ░███   █ ░  ░███  █ ░  ░███░███ ░███  ░███    ░███  ░███  ░███    ░███ 
-- ░███████    ░██████    ░███░░███░███  ░██████████   ░███  ░██████████  
-- ░███░░░█    ░███░░█    ░███ ░░██████  ░███░░░░░███  ░███  ░███░░░░░███ 
-- ░███  ░     ░███ ░   █ ░███  ░░█████  ░███    ░███  ░███  ░███    ░███ 
-- █████       ██████████ █████  ░░█████ █████   █████ █████ █████   █████
-- ░░░░░       ░░░░░░░░░░ ░░░░░    ░░░░░ ░░░░░   ░░░░░ ░░░░░ ░░░░░   ░░░░░ 
                                                                        
-- Meu Discord: Fenrir#9143

-- Meu Servidor: https://discord.gg/KkCBwsQ

--[[
    Obrigado por baixar o meu script!

    O script ainda esta na versao BETA, oq significa que eh possivel encontrar bugs
    enquanto ultiliza-lo, principalmente em outras Frameworks como ESX e vRP.

    Caso voce encontre algum bug ou deseje dar alguma dica para aprima-lo, avise-me
    em meu servidor na seção de Bugs e Aprimoramentos. Seu nome sera creditado no proximo 
    Changelog caso tal aprimoramento seja adicionado ou o bug seja resolvido <3.
]]