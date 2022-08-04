*** Settings ***
Resource    ..\\resource\\setup_teardown\\resource.resource
Suite Setup     setup da minha suite de teste
Suite Teardown    teardown da minha suite de teste
Test Setup        setup default de teste
Test Teardown


*** Test Cases ***
cenario de login SankhyaOM
    # [Setup]    setup dos meus testes
    [Teardown]    teardwon dos meus testes
    Log To Console     \n\n Estou dentro do meu teste 1 \n\n
    keyword 1

cenario de compra dentro do SankhyaOM
    [Setup]    setup dos meus testes
    [Teardown]    teardwon dos meus testes
    Log To Console     \n\n Estou dentro do meu teste 2 \n\n



