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

logfilter = true -- habilita(true)/desabilita(false) as mensagens no CMD mostrando quem dizer algo inapropriado


-- nao precisa mexer em nada aqui em baixo
RegisterNetEvent('fenrir:filterlog')
AddEventHandler('fenrir:filterlog',function(msglog)
    if logfilter then
        local name = GetPlayerName(source)
        print("O usuario (" .. name ..") tentou dizer uma palavra inapropriada: " .. msglog)
    end
end)