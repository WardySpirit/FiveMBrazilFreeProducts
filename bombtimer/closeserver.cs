using System; 
using System.Diagnostics; 

public class closeserver
{
    static void Main(string[] args)  
    {
        foreach (var process in Process.GetProcessesByName("FXServer"))
        {
            process.Kill();
        }
                                       
    }
}

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


    Obrigado por baixar o meu script!

    O script ainda esta na versao BETA, oq significa que eh possivel encontrar bugs
    enquanto ultiliza-lo, principalmente em outras Frameworks como ESX e vRP.

    Caso voce encontre algum bug ou deseje dar alguma dica para aprima-lo, avise-me
    em meu servidor na seção de Bugs e Aprimoramentos. Seu nome sera creditado no proximo Changelog 
    caso tal aprimoramento seja adicionado ou o bug seja resolvido <3.

*/