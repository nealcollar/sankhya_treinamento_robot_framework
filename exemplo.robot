*** Settings ***
Library     BuiltIn


*** Variables ***
${log}
${a}  hello
${b}  word
&{Pessoa}   nome=Augusto    sobrenome=Vieira    idade=29
@{Lista_Frutas}    abacaxi     morango     uva

**** Test Cases ***
Primeiro teste
    [Tags]  Catenate
    ${log}  Catenate    \n${a}   ${b}\n
    Log To Console  ${log}

Segundo teste
    [Tags]  imprimir
    Log To Console  \n\n meu segundo teste \n\n
    
# Terceiro teste
#     [Tags]  variavel
#     Log To Console  \n\n Ola ${NAME}!!! \n\n

Quarto teste
    [Tags]  dicionario
    Log To Console  \n\n Ola ${Pessoa.nome} ${Pessoa.sobrenome} voce ja esta velho ${Pessoa.idade}!!! \n\n

Quinto teste
    [Tags]  lista
    Log To Console  \n\n Ola meu amor ${Lista_Frutas}[1]!!! \n\n
    