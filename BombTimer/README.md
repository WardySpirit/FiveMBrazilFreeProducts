<!--<p style="align: center;">![Bomb Timer Banner](https://i.ibb.co/jrc9kkH/bombtimer.png)</p>-->

<p style="text-align: center;"><img src="https://i.ibb.co/jrc9kkH/bombtimer.png" alt="BombTimerBanner"></p>

<h1 style="text-align: center;">BombTimer</h1>
<h3 style="text-align: center;">Desligue seu servidor automaticamente com este poderoso script!!!</h3>

## Menu

* [O que é o BombTimer](#o-que-é-o-bombtimer)
* [Como o BombTimer funciona](#como-o-bombtimer-funciona)
* [Em quais servers o BombTimer é compatível](#em-quais-servers-o-bombtimer-é-compatível)
* [Como usar o BombTimer](#como-usar-o-bombtimer)
* [Bugs e Aprimoramentos](#bugs-e-aprimoramentos)
* [Contatos](#contatos)

<hr>

# O que é o BombTimer

O BombTimer veio com a ideia de criar uma forma de desligar um servidor sem a necessidade de um humano supervisionando e fazendo isso manualmente e sem a necessidade de terceiros.

O BombTimer é um script exclusivo para FiveM com o intuito de permitir que o administrador/dono do servidor, atraves de uma permissao unica, consiga setar um tempo para que o servidor desligue automaticamente apos este tempo acabar e, caso o administrador queira, tambem pode definir uma forma de avisar aos usuarios do servidor que o timer foi ativado, e quanto tempo falta ate o servidor desligar automaticamente.

Nao fique assustado quanto ao nome do script, o script nao "explode" seu servidor xD, ele apenas ira fechar o run.bat do server, fazendo com que o servidor feche junto.

<hr>

# Como o BombTimer funciona

Demorei um tempo ate descobrir como faria com que o script conseguisse fechar o servidor, ja que a biblioteca do FiveM nao distribui nenhuma forma de fazer isso, tanto pelo client, quanto pelo server.

Por esse motivo eu ultilizei um arquivo, escrito em C#, na qual ele ira escanear todos os processos do computador chamados "FXServer" (run.bat esta incluso nesse processo), e assim fecha-los, fazendo com que, apos o tempo acabar, o arquivo .cs seja entao executado e com isso, fechar o servidor sem causar qualquer problema.

Em meu servidor exibido em [Contatos](#contatos), voce podera comprar meus servicos para que eu possa, por motivos de aprimoramento e aprendizado, explicar linha por linha de meu script de forma mais detalhada.

# Em quais servers o BombTimer é compatível

Essa é a maravilha do BombTimer, ele foi feito completamente com funcoes padroes da biblioteca do FiveM e alguns metodos do proprio Lua. Por esse motivo, ela é **100% compatível com qualquer framework**, ou seja, com qualquer base.

É claro que, em alguns casos, o script pode ter alguns bugs, seja pelo fato dele estar em BETA, ou por estar em algum servidor com frameworks na qual restringem certos acessos a metodos padroes. Você pode relatar esse erro na secao de BUGS em meu servidor exibido em [Contatos](#contatos).

<hr>

# Como usar o BombTimer

Aqui nos dividimos em 3 fases:

* Preparacao -> voce precisa ler essa parte para usar o script
* Comandos -> como cada comando funciona
* Command Helper -> como abrir a hud de Command Helper

<hr>

## Preparacao

Antes de usar o script, tem duas coisas que voce deve analisar:

1. O script ultiliza `IsAceAllowed()` para verificar atraves do server.cfg se o usuario tem tal permissao para executar o comando, por isso, se voce quer dar a algum usuário permissão para usar este script, peça para ele a **steam.identifier** ou o **identifier.license** dele e insira a seguinte linha no seu `server.cfg`:

```cfg
add_ace identifier.license:ADICIONE_A_LICENSA_AQUI bomber allow
```

sim, a permissao usada para usar o script se chama **bomber** xD.

2. Verifique a versao do seu server

Caso o seu servidor ainda utilize `__resource.lua` para linkar os scripts ao server.cfg, muda o nome do arquivo `fxmanifest.lua` para `__resource.lua` e pronto, funcionara corretamente.

<hr>

## Comandos

O BombTimer possui apenas 2 comandos:

## /startBombTimer [Timer] [Mode] [Jump]

`/startBombTimer` serve para iniciar o cronometo no servidor, é ele que vai dizer em quanto tempo o servidor fechará, o modo que os usuarios serão informados, etc...

Ele possui 3 parametros:

### Timer

Neste parametro voce definirá (em minutos) o tempo ate o servidor fecha, ou seja, se voce definir como 60, o servidor fechara sozinho daqui 1 hora apos esse comando ter sido usado

#### Exemplos

`/startBombTimer 15 1` -> O servidor fechará **apos 15 minutos**
`/startBombTimer 120 1` -> O servidor fechará **daqui 2 horas**

### Mode

Neste parametro voce definirá o modo que voce quer que o script avise para seus usuarios do server quanto tempo falta para o servidor fechar.

Sao apenas 3 valores validos:

    * 1 - avisara os usuarios a cada 1 minuto por meio de notificacao acima do mapa
    * 2 - avisara os usuarios a cada 1 minuto por meio de um desenho grande na tela (bom em caso de problemas graves ou nova atualizacao por ser chamativa)
    * 3 - Modo anonimo, nao avisara em nenhum momento sobre o timer para os usuarios

#### Exemplos

`/startBombTimer 15 1` -> O servidor fechará apos 15 minutos **avisando por notificacao**
`/startBombTimer 40 3` -> O servidor fechará apos 40 minutos **sem avisar ninguem**

### Jump

Este parametro é opinial, caso nao defina um valor a ele, o valor por padrao sera 1.

Neste parametro voce pode definir de quanto em quantos minutos o servidor avisara os usuarios, ou seja, se voce definir o Timer como 60 minutos, e o Jump como 5, ele avisara os usuarios de 5 em 5 minutos sobre o tempo, em vez de 1 em 1 minuto.

#### Exemplos

`/startBombTimer 15 1 ` -> O servidor fechará apos 15 minutos, avisando por notificacao **e de 1 em 1 minuto**
`/startBombTimer 60 3 5 ` -> O servidor fechará apos 1 hora, sem avisar ninguem **e de 5 em 5 minutos**

## Command Helper

Pra que abrir este repositorio toda vez que quiser consultar pelos comandos novamente, quando existe uma HUD prontinha pra voce consultar dentro do comando!!!!

Apenas digite `/startBombTimer -1` para abrir o menu de ajuda do comando

Se voce for um desenvolvedor de scripts, ou um dono de servidor, voce pode optar por comprar por um preço barato esta HUD de forma personalizada para seus comandos do script ou do server em meu servidor exibida em [Contatos](#contatos).

<hr>

## /stopBombTimer

Este comando é bem simples. Como o nome ja diz, ele para um Timer que ja está ativo.

Voce precisa ter um Timer ja iniciado para usar este comando (óbvio :V).

<hr>

# Bugs e Aprimoramentos

Este script ainda esta em versao BETA, então ele poderá apresentar bugs ao decorrer do uso. Caso voce encontre algum desses bugs, relate-os na seção de BUGS em meu servidor exibido em [Contatos](#contatos). Caso o bug seja consertado, seu nome sera exibido no próximo `CHANGELOG`

Se você é um desenvolvedor e viu alguma coisa que poderia ser aprimorada, contate-me na seção de APRIMORAMENTOS em meu servidor exibido em [Contatos](#contatos). Caso o aprimoramento seja inserido na próxima versao, seu nome será exibido no próximo `CHANGELOG`

<hr>

# Contatos

Meu Discord: `Fenrir#9143`

Meu Servidor: `https://discord.gg/KkCBwsQ`

Whatsapp: `+19 997775111`