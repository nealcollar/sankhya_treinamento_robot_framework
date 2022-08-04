*** Settings ***
Resource    ../resource/api/api_sankhya.resource

*** Test Cases ***
Efetuar login no sankhyaOM
    Dado que tem as configuracoes da requisicao
    Quando envio esta requisicao de login
    Entao valido o atributo status 1

Criar um pedido
    Dado que eu estou logado
    Quando crio um pedido
    Entao valido meu pedido