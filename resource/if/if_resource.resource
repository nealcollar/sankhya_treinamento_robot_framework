*** Settings ***
Library     Collections


*** Keywords ***
buscar 5 ou 8
    [Documentation]     criando funcao para percorrer os numeros de 0 a 10 e imprima somente os numeros 5 ou 8
    FOR    ${item}    IN RANGE   0  10
        IF  ${item} == 5
            Log To Console  \nEstou no numero: ${item}\n
        ELSE IF  ${item} == 8
            Log To Console   \nEstou no numero: ${item}\n
        END  
    END