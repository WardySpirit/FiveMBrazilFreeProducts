function Cmd1(x){
    if(x == 0)
    {
        document.getElementById("cmdTitle").innerHTML = "/startBombTimer <a id=\"cmd11\" href=\"#\" onclick=\"Cmd1(1);return false;\">[timer]</a> <a id=\"cmd12\" href=\"#\" onclick=\"Cmd1(2);return false;\">[mode]</a>  <a id=\"cmd13\" href=\"#\" onclick=\"Cmd1(3);return false;\">[jump]</a>";
        document.getElementById("cmdSubTitle").innerHTML = "";
        document.getElementById("res1").innerHTML = "Este comando serve para iniciar o Timer do seu servidor.";
        document.getElementById("res2").innerHTML = "Ao liga-lo, o seu servidor sera fechado automaticamente apos o termino do cronometro setado."; 
        document.getElementById("res3").innerHTML = "[Clique em um dos parametros para ver como usa-los]";
        document.getElementById("cmdExample").innerHTML = "";
        document.getElementById("ex1").innerHTML = "";
        document.getElementById("ex2").innerHTML = "";
        document.getElementById("ex3").innerHTML = "";
        document.getElementById("line").style.opacity = "0.0";
        document.getElementById("cmdtxt1").style.color = "cyan";
        document.getElementById("cmdtxt2").style.color = "white";
    }else if(x == 1){
        document.getElementById("cmdSubTitle").innerHTML = "Timer [Obrigatorio]";
        document.getElementById("res1").innerHTML = "Este parametro eh usado para definir o tempo (em minutos) o cronometro do comando.";
        document.getElementById("res2").innerHTML = "O servidor sera fechado apos a contagem do tempo definido por esse parametro chegar a 0."
        document.getElementById("res3").innerHTML = "Definir esse parametro como -1 abre essa HUD de ajuda.";
        document.getElementById("cmdExample").innerHTML = "Exemplos";
        document.getElementById("ex1").innerHTML = "/startBombTimer 15 1  -> O servidor fechara em 15 minutos"; 
        document.getElementById("ex2").innerHTML = "/startBombTimer 29 2  -> O servidor fechara em 29 minutos"; 
        document.getElementById("ex3").innerHTML = ""; 
        document.getElementById("line").style.opacity = 1.0;
    }else if(x == 2){
        document.getElementById("cmdSubTitle").innerHTML = "Mode [Obrigatorio]";
        document.getElementById("res1").innerHTML = "Este parametro eh usado para definir o modo que sera exibido o tempo para os usuarios.";
        document.getElementById("res2").innerHTML = "Valores: <ul><li>1 - Avisara o usuario por notificacao.</li><li>2 - Avisara o usuario por mensagem na tela.</li><li>3 - Modo anonimo, nao avisara o usuario.</li>"
        document.getElementById("res3").innerHTML = ""; 
        document.getElementById("cmdExample").innerHTML = "Exemplos"; 
        document.getElementById("ex1").innerHTML = "/startBombTimer 15 2 -> Avisara os usuarios por mensagem"; 
        document.getElementById("ex2").innerHTML = "/startBombTimer 60 3 -> Nao avisara ninguem"; 
        document.getElementById("ex3").innerHTML = ""; 
        document.getElementById("line").style.opacity = 1.0;
    }else if(x == 3){
        document.getElementById("cmdSubTitle").innerHTML = "Jump [Opcional] [Default: 1]";
        document.getElementById("res1").innerHTML = "Este parametro eh usado para definir de quanto em quantos minutos avisara os usuarios do tempo.";
        document.getElementById("res2").innerHTML = "Este parametro eh opcional, caso nao defina um valor para ele, ele sera por padrao 1.";
        document.getElementById("res3").innerHTML = "Caso use o valor 3 para [Mode], nao existe a necessidade de definir esse parametro."; 
        document.getElementById("cmdExample").innerHTML = "Exemplos"; 
        document.getElementById("ex1").innerHTML = "/startBombTimer 15 2 5 -> Avisara de 5 em 5 minutos"; 
        document.getElementById("ex2").innerHTML = "/startBombTimer 60 3 2 -> Avisara de 2 em 2 minutos"; 
        document.getElementById("ex3").innerHTML = "";
        document.getElementById("line").style.opacity = 1.0; 
    }
}

function Cmd2(x){
    if(x == 0){
        document.getElementById("cmdTitle").innerHTML = "/stopBombTimer";
        document.getElementById("res1").innerHTML = "Este comando serve para parar um Timer que esta ativo.";
        document.getElementById("res2").innerHTML = "Voce soh pode usa-lo se ja tiver usado o /startBombTimer. Voce pode iniciar e parar o timer quando quiser."; 
        document.getElementById("res3").innerHTML = "Este comando nao contem parametros.";
        document.getElementById("cmdExample").innerHTML = "";
        document.getElementById("ex1").innerHTML = "";
        document.getElementById("ex2").innerHTML = "";
        document.getElementById("ex3").innerHTML = "";
        document.getElementById("line").style.opacity = "0.0";
        document.getElementById("cmdtxt1").style.color = "white";
        document.getElementById("cmdtxt2").style.color = "cyan";
    }
}