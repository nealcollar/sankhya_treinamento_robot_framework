*** Settings ***
Library    SeleniumLibrary
Test Teardown    Close Browser

*** Variables ***
${url}      https://atacadistriborclhd411.qa.sankhya.com.br/
${campo_usuario}    css:#login
${campo_password}    password
${botao_logar}    //button[text()="Entrar" and @class="btn-login"]
${usuario}    sup
${senha}    atacado
${wallpaper}    //img[contains(@src,"evo-wallpaper")]

*** Keywords ***
Dado que estou com o navegador aberto na pagina da Sankhya
    Open Browser    url=${url}    browser=headlesschrome

Quando realizo o login no ERP
    Wait Until Element Is Visible    ${campo_usuario}
    Input Text    ${campo_usuario}    ${usuario}
    Wait Until Element Is Visible    ${campo_password}
    Input Text    ${campo_password}    ${senha}
    Wait Until Element Is Visible    ${botao_logar}
    Click Button    ${botao_logar}

Entao valido que estou logado
    Wait Until Page Contains Element    ${wallpaper}


*** Test Cases ***
Amamos a Sankhya ERP e faremos o login nela
    Dado que estou com o navegador aberto na pagina da Sankhya
    Quando realizo o login no ERP
    Entao valido que estou logado