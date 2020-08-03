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


function filterChat(message)

    -- adicione mais elementos nessa tabela par que elas sejam filtradas caso ditas no chat por alguma pessoa
    filter = {
        [1] = "palavra 1", -- altere e adicione mais palavras nessa lista para filtra-las
        [2] = "palavra 2",
        [3] = "https://discord.gg/%w*", -- bloqueia qualquer link de discord
        [4] = "discord.gg/%w*"  -- bloqueia qualquer link de discord
        --[5] = "palavra 5"
    }

    -- adicione excecoes nessa tabela para que elas possam burlar algumas mensagens e regexs na tabela filter
    exceptions = { 
        [1] = "https://discord.gg/KkCBwsQ" -- troque esse link pelo link do seu discord para torna-lo aceitavel no chat
    }

    --[[
        Lembre-se, para voce adicionar mais elementos na tabela, voce deve fazer da seguinte forma:
        [numero] = "mensagem"

        Lembre-se tambem de que todos os elementos devem ter uma virgula "," no final delas, menos no ultimo elemento da tabela

    ]]

    txt = message

    -- edite apenas em "args" caso queira
    for i=1,#filter,1 do
        if string.match(txt, filter[i]) then
            for j=1,#exceptions,1 do
                if not string.match(txt, exceptions[j]) then
                    TriggerEvent('chat:addMessage', {
                        color = {255,0,0}, 
                        multiline = true, 
                        args = {"[Server]", "A mensagem nao pode ser enviada pois continha conteudo inapropriado"}
                    })
                    local cut = txt:match(filter[i])
                    TriggerServerEvent('fenrir:filterlog',cut)
                    return false
                end
            end
        end
    end

    return true
end



