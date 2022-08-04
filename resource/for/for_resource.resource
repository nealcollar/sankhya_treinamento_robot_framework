*** Variables ***
@{frutas}    mamao    morango    banana    kiwi    abacaxi    manga


*** Keywords ***
Contar de 0 a 9
    FOR  ${count}  IN RANGE  0  11 0....<11
        Log   estou no numero: ${count}
    END


Percorrer itens de uma lista
    FOR  ${fruta}  IN  @{frutas}
        Log    ${fruta}
    END


