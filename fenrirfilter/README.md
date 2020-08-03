<p style="text-align: center;"><img src="https://i.ibb.co/gJSYxVk/fenrir-Filter-Chat.png" alt="FenrirFilterChatLogo"></p>

<h1 style="text-align: center;">Fenrir FilterChat</h1>
<h3 style="text-align: center;">Faça do seu servidor um lugar mais seguro!!!</h3>

## Menu

* [O que é o FilterChat](#o-que-é-o-filterchat)
* [Como o FilterChat funciona](#como-o-filterchat-funciona)
* [Em quais servers o BombTimer é compatível](#em-quais-servers-o-filterchat-é-compatível)
* [Como usar o FilterChat](#como-usar-o-filterchat)
* [Bugs e Aprimoramentos](#bugs-e-aprimoramentos)
* [Contatos](#contatos)

<hr>

# O que é o FilterChat

O FilterChat é uma forma simples, mas completa, de filtrar as mensagens no chat de seu servidor.

O FilterChat é um script exclusivo para FiveM com o intuito de dar aos admins a chance de definir palavras que podem ser consideradas inapropriadas, ou links que devem ser banidos de dentro do servidor e do chat, de forma que quando o usuario tentar digitar tal frase ou palavra, a mensagem nao sera enviada, e um aviso sera dado no cmd do servidor.

Alem de palavras a serem filtradas, voce poderá trabalhar com **expressões regulares** e adicionar **excessões** que são palavras com a permissao de burlar certos regexs filtrados.

<hr>

# Como o FilterChat funciona

Apesar de o C# apresentar formas mais simples de se trabalhar com qualquer mensagem inserida no chatbox, eu não encontrei uma forma mais pratica de fazer isso em Lua sem precisar mexer um pouco no `cl_chat.lua` do próprio FiveM.

Por este motivo, o script necessita que voce crie uma variavel que ira, atraves de uma funcao exportada do resource, verificar se tal mensagem pode ou nao ser enviada, e assim por diante, todo o resto é trabalho dentro da própria resource.

O script faz uma varredura por toda a mensagem enviada pelo usuario, elemento por elemento da tabela de filtros, e verifica se um dos elementos existe dentro daquela mensagem, antes que seja permitido enviar a mensagem para todos no chat.

Em meu servidor exibido em [Contatos](#contatos), voce podera comprar meus servicos para que eu possa, por motivos de aprimoramento e aprendizado, explicar linha por linha de meu script de forma mais detalhada.

# Em quais servers o FilterChat é compatível

Essa é a maravilha do FilterChat, ele foi feito completamente com funcoes padroes da biblioteca do FiveM e alguns metodos do proprio Lua. Por esse motivo, ela é **100% compatível com qualquer framework**, ou seja, com qualquer base.

É claro que, em alguns casos, o script pode ter alguns bugs, seja pelo fato dele estar em BETA, ou por estar em algum servidor com frameworks na qual restringem certos acessos a metodos padroes. Você pode relatar esse erro na secao de BUGS em meu servidor exibido em [Contatos](#contatos).

<hr>

# Como usar o FilterChat

Aqui nos dividimos em 2 fases:

* Preparação -> voce precisa ler essa parte para usar o script
* Configuração -> como configurar o seu FilterChat

<hr>

## Preparação
Antes de usar o script, tem algumas coisas que voce deve fazer:

1. Insira a pasta `fenrirfilter` na pasta `resources` do seu servidor, e sem seguida, dentro do `server.cfg`, insira uma das linhas abaixo para ativar o resource `fenrirfilter` ao seu servidor:

```cfg
start fenrirfilter
```
ou
```cfg
ensure fenrirfilter
```

não se esqueca de colocar esta linha depois da linha `start chat` para garantir que o chat inicie antes do `fenrirfilter`.

2. Configurando o chat:

Procure pelo arquivo `cl_chat.lua` em seu servidor, geralmente dentro da pasta `[system]` em `resources`. Dentro desse arquivo, você deverá procurar pela seguinte função:

```lua
RegisterNUICallback('chatResult', function(data, cb)
```

logo abaixo desta linha, declare a seguinte variavel dentro da função:
```lua
local filter = exports.fenrirfilter:filterChat(data.message)
```

Apos isso, procure pela seguinte condição:
```lua
if not data.canceled then
```
e substitua por isso:
```lua
if not data.canceled and filter then
```

No final, a função deverá se parecer com isso para funcionar o resource corretamente:
```lua
RegisterNUICallback('chatResult', function(data, cb)
	chatInputActive = false
	SetNuiFocus(false)

	local filter = exports.fenrirfilter:filterChat(data.message) -- ADICIONAR ESSA VARIAVEL

	if not data.canceled and filter then -- MUDAR ESSA CONDICAO
		local id = PlayerId()
		local r, g, b = 0, 0x99, 255

		if data.message:sub(1, 1) == '/' then
			ExecuteCommand(data.message:sub(2))
		else
			TriggerServerEvent('_chat:messageEntered', GetPlayerName(id), { r, g, b }, data.message)
		end
	end

	cb('ok')
end)
```

Se você fez tudo corretamente aqui, o seu resource ja estará funcionando 100% no seu chat do servidor!!!

<hr>

## Configuração

1. Em `client.lua`:

. Modifique ou adicione novos valores a tabela `filter` do script. Você pode adicionar palavras, frases ou expressões regulares para serem filtradas e proibídas de serem ditas no chat.

. Modifique ou adicione novos valores na tabela `exceptions` do script. Essa tabela serve para adicionar certas palavras que podem burlar certas expressões regulares da tabela `filter`, como por exemplo, o link de discord do seu servidor.

2. Em `server.lua`:

. Habilite (true) ou Desabilite (false) a variavel `logfilter` para exibir no cmd do servidor toda vez que alguem tentar dizer alguma palavra inapropriada da lista `filter`.

<hr>

# Bugs e Aprimoramentos

Este script ainda esta em versao BETA, então ele poderá apresentar bugs ao decorrer do uso. Caso voce encontre algum desses bugs, relate-os na seção de BUGS em meu servidor exibido em [Contatos](#contatos). Caso o bug seja consertado, seu nome sera exibido no próximo `CHANGELOG`

Se você é um desenvolvedor e viu alguma coisa que poderia ser aprimorada, contate-me na seção de APRIMORAMENTOS em meu servidor exibido em [Contatos](#contatos). Caso o aprimoramento seja inserido na próxima versao, seu nome será exibido no próximo `CHANGELOG`

<hr>

# Contatos

Meu Discord: `Fenrir#9143`

Meu Servidor: `https://discord.gg/KkCBwsQ`

Meu Patreon: https://www.patreon.com/FenrirTheCoder