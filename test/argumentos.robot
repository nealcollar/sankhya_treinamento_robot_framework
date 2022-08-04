*** Settings ***
Resource    ../resource/argumentos/resource_arg.resource

*** Test Cases ***
Meu teste de soma
    ${resultado}    Somar dois numeros    1    2
    Log    ${resultado}

Meu teste de soma com argumentos embutidos
    ${resultado}    Somar dois numeros 1 e 2
    Should Be Equal    "${resultado}"    "3"
    Log     ${resultado}

Criando email personalizado
    [Tags]      argumentos_1
    [Documentation]     deve criar um email apartir dos dados que fornecemos
    ${retorno}     formando o email  Augusto  Vieira  12
    Log To Console  criando por argumentos padrao: \n${retorno}\n

    ${retorno}     formando o email embutido augusto vieira 12
    Log To Console  criado por argumentos embutidos: \n${retorno}\n
