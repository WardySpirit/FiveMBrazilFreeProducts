/*
    ███████████ ██████████ ██████   █████ ███████████   █████ ███████████  
    ░░███░░░░░░█░░███░░░░░█░░██████ ░░███ ░░███░░░░░███ ░░███ ░░███░░░░░███ 
     ░███   █ ░  ░███  █ ░  ░███░███ ░███  ░███    ░███  ░███  ░███    ░███ 
     ░███████    ░██████    ░███░░███░███  ░██████████   ░███  ░██████████  
     ░███░░░█    ░███░░█    ░███ ░░██████  ░███░░░░░███  ░███  ░███░░░░░███ 
     ░███  ░     ░███ ░   █ ░███  ░░█████  ░███    ░███  ░███  ░███    ░███ 
     █████       ██████████ █████  ░░█████ █████   █████ █████ █████   █████
     ░░░░░       ░░░░░░░░░░ ░░░░░    ░░░░░ ░░░░░   ░░░░░ ░░░░░ ░░░░░   ░░░░░ 
                                                                        
    Meu Discord: Fenrir#9143

    Meu Servidor: https://discord.gg/KkCBwsQ

    [charity] Obrigado por comprar o meu servico! 5% do dinheiro gasto nesse servico sera usado no 
    final do mes para ajudar animais silvestres em regioes de caça esportiva.

    O script ainda esta na versao BETA, oq significa que eh possivel encontrar bugs
    enquanto ultiliza-lo, principalmente em outras Frameworks como ESX e vRP.

    Caso voce encontre algum bug ou deseje dar alguma dica para aprima-lo, avise-me
    em meu discord. Seu nome sera creditado no proximo Changelog caso tal aprimoramento
    seja adicionado ou o bug seja resolvido <3.

    Caso queira, voce ja pode deletar esse comentario para limpar visualmente o script.
*/
$(function(){
    window.onload = function(e){
        $('.container').hide();
        window.addEventListener("message", (event) => {
            var item = event.data;
            if(item !== undefined && item.type === "ui"){
                if(item.display === true){
                    $('.container').show();
                }
            }
            $('#exit').click(function(){
                $('.container').hide();
                $.post("http://BombTimer/quit", JSON.stringify({}));
                return;
            })
        })
    }
})