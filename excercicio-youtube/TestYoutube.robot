*** Settings ***
Resource   ResourceYoutube.robot
Test Setup  Dado que eu acesso o site do youtube
Test Teardown  Fechar Navegador

*** Test Case ***
Cenario 1: Executar video no site do youtube 
    Quando digito o nome da musica
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o video é executado