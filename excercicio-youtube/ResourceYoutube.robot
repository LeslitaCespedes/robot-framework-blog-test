*** Settings ***
Library   SeleniumLibrary

*** Variable ***
#Dados do teste
${NOME_DA_MUSICA}            diego rios   

#Variaveis de configuração
${URL}              https://www.youtube.com 
${BROWSER}          chrome

#elementos
${INPUT_PESQUISA}           //input[@id="search"]
${BUTTON_PESQUISA}          //button[@id="search-icon-legacy"]
${PRIMEIRO_ELEMENTO}        (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${PROVA_VIDEO}              //yt-formatted-string[contains(text(),"Compartilhar")]

*** Keywords ***
Dado que eu acesso o site do youtube
    Open Browser    ${URL}   ${BROWSER}  
    Maximize Browser Window 
    
Quando digito o nome da musica
    Input Text     ${INPUT_PESQUISA}   ${NOME_DA_MUSICA}  

E clico no botão buscar
    Click Element    ${BUTTON_PESQUISA}  

E clico na primeira opção da lista
    Wait Until Element Is Visible    ${PRIMEIRO_ELEMENTO}  10
    Click Element    ${PRIMEIRO_ELEMENTO}

Então o video é executado
    Wait Until Element Is Visible  ${PROVA_VIDEO}   10
    Element Should Be Visible      ${PROVA_VIDEO}
  

Fechar Navegador     
    Close Browser


