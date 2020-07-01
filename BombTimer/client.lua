
local bomber = false;
local display = false;
local ace = false;

-------------
-------------   funcoes
-------------

function change(x)
    ace = x
end

-------------
-------------   Eventos
-------------

RegisterNetEvent("verificar:Return")
AddEventHandler("verificar:Return", function(verify)
    change(verify)
end)


-------------   Stop
-------------   
--(O comando abaixo serve para parar o timer atual)
-------------

RegisterCommand('stopBombTimer', function()
    TriggerServerEvent("verificar")
    Citizen.Wait(600) -- garante que a funcao seja executada ate o final
    if ace == true then
        if bomber == true then
            notificar("~g~Timer desligado.")
            bomber = false
        else
            notificar("~r~Voce precisa iniciar o Timer antes de para-lo")
        end
        ace = false
    end
end,false)

-------------   Start
-------------   
--(O Comando abaixo liga o timer com as preferencias do usuario passadas para args[])
-------------

RegisterCommand('startBombTimer',function(source, args)
    TriggerServerEvent("verificar")
    Citizen.Wait(600) -- garante que a funcao change() seja executada ate o final
        if ace == true then
            Citizen.CreateThread(function()
                local x = tonumber(args[1])
                if x == -1 then
                    SendNUIMessage({
                        type = "ui",
                        display = true
                    })
                    display = true
                    SetNuiFocus(display, display)
                    Citizen.CreateThread(function()
                        while display do
                            DisableControlAction(0, 1, display)
                            DisableControlAction(0, 142, display)
                            Citizen.Wait(5)
                        end
                        return false
                    end)
                    return false
                end
                local z = 1
                if tonumber(args[3]) == nil then
                    z = 1
                elseif (tonumber(args[3]) > 0) and (tonumber(args[3]) <= x) then
                    z = tonumber(args[3])
                else
                    notificar("~r~Voce precisa digitar o valor do Jump entre 1 e o a quantidade de minutos escolhida")
                end
                if ((x ~= nil) and (x > 0)) then
                    if bomber == false then
                        notificar("~g~Iniciando...")
                        local x2 = x
                        local z2 = z
                        local cTimer = z2*60000
                        bomber = true
                        local tempo = (x2 * 60000)
                        Citizen.Wait(100)
                        notificar("~g~Timer iniciado.")
                        while bomber == true do
                            local y = tonumber(args[2])
                            if y == 1 then
                                TriggerServerEvent("notificarAllPlayers", "~r~Tempo restante: ~g~" .. math.floor(tempo / 60000) .. " minutos.")
                            elseif y == 2 then
                                TriggerServerEvent("drawAllPlayers", "~r~Tempo restante: ~g~" .. math.floor(tempo / 60000) .. " minutos.")
                            elseif y == 3 then
                                LocalChat("O Timer foi iniciado no modo silencioso")
                            else
                                notificar("~r~Os unicos valores aceitos para o parametro Mode sao 1, 2 e 3")
                            end
                            Citizen.Wait(cTimer)
                            tempo = tempo - cTimer
                            if (tempo <= 0) then
                                TriggerServerEvent("notificarAllPlayers", "~r~Desligando em 5...")
                                Citizen.Wait(1000)
                                TriggerServerEvent("notificarAllPlayers", "~r~Desligando em 4...")
                                Citizen.Wait(1000)
                                TriggerServerEvent("notificarAllPlayers", "~r~Desligando em 3...")
                                Citizen.Wait(1000)
                                TriggerServerEvent("notificarAllPlayers", "~r~Desligando em 2...")
                                Citizen.Wait(1000)
                                TriggerServerEvent("notificarAllPlayers", "~r~Desligando em 1...")
                                Citizen.Wait(1000)
                                LocalChat("Desligar!!!!")
                                TriggerServerEvent('executeBomb')
                                bomber = false
                                break
                            end
                        end
                        x2, z2, y, tempo, cTimer, x, z = nil
                        args[1], args[2], args[3] = nil
                        return false
                    else 
                        notificar("~r~Voce precisa parar o Timer antes de iniciar outro")
                    end
                else
                    notificar("~r~Defina o timer corretamente em minutos")
                end
            end)
            ace = false
        else
            notificar("~r~Voce nao tem permissao para executar este comando")
        end
end,false)

-------------
-------------   Registros de NUI
-------------

RegisterNUICallback("quit", function(data)
    display = false
    SetNuiFocus(display, display)
    return false
end)

-------------
-------------   Sugestoes
-------------


TriggerEvent('chat:addSuggestion', '/startBombTimer', 'Inicia o timer para desligar o servidor', {
    { name="timer", help="tempo em minutos (min: 1)(-1 - abre o menu de ajuda)" },
    { name="mode", help="como deseja exibir os alertas (1 - notificao)(2 - mensagem na tela)(3 - nao exibe nada)"},
    { name="jump", help="OPCIONAL, de quantos em quantos minutos o alerta sera exibido (min: 1)(default: 1)"}
})

TriggerEvent('chat:addSuggestion', '/stopBombTimer', 'Para um timer ativo', {})


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
    em meu servidor na seção de Bugs e Aprimoramentos. Seu nome sera creditado no proximo Changelog 
    caso tal aprimoramento seja adicionado ou o bug seja resolvido <3.
]]