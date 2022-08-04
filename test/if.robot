*** Settings ***
Resource    ../resource/if/if_resource.resource


*** Test Cases ***
Imprimindo numero 5 ou 8 dentro de 0 a 10
    [Tags]      busca_valor
    buscar 5 ou 8
