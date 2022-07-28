*** Settings ***
Documentation   Criando arquivo '.resource' do execicio 'variaveis'
Library     Collections

*** Variables ***
&{Pessoa}   nome='Augusto'     sobreNome='Vieira'       idade='28'      sexo='Masculino'       cidade='Santana de Parnaiba'     cep=06540235
@{Lista_frutas}     mamao      banana       abacaxi        morango      laranja

*** Keywords ***
Tenho um dicionario com dados pessoais e imprimo ele
    Log To Console      \nImprimindo o dicionario pessoa: \n${Pessoa}\n
    Log To Console      Pegando somente o nome: ${Pessoa.nome}\n
    Log To Console      Pegando somente o sobrenome: ${Pessoa.sobreNome}\n
    Log To Console      Pegando somente o idade: ${Pessoa.idade}\n
    Log To Console      Pegando somente o cidade: ${Pessoa.cidade}\n
    Log To Console      Pegando somente o cep: ${Pessoa.cep}\n

Tenho uma lista de frutas e imprimo ela
    Log To Console  \nRecebendo a lista de frutas: \n${Lista_frutas}\n
    Log To Console  \nPrimeira fruta: \n${Lista_frutas[0]}\n
    Log To Console  \nSegunda fruta: \n${Lista_frutas[1]}\n
    Log To Console  \nTerceira fruta: \n${Lista_frutas[2]}\n
    Log To Console  \nQuarto fruta: \n${Lista_frutas[3]}\n
    Log To Console  \nQuinto fruta: \n${Lista_frutas[4]}\n