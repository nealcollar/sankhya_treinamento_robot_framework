*** Settings ***
Resource    ../resource/variaveis/resource.resource

*** Test Cases ***
Execicio 1 - imprimir dicionario com dados pessoais
    [Tags]  dicionarios
    [Documentation]     teste para imprimir dicionario com dados
    Tenho um dicionario com dados pessoais e imprimo ele

Execicio 2 - imprimir aminha lista de frutas
    [Tags]  lista
    [Documentation]  teste para imprimir uma lista de frutas
    Tenho uma lista de frutas e imprimo ela