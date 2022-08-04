
*** Keywords ***
setup da minha suite de teste
    Log To Console    \n\n Estou executando minha funcao ANTES da suite de teste \n\n

setup dos meus testes
    Log To Console    \n\n Estou executando minha funcao ANTES da execucao do meu teste \n\n

teardown da minha suite de teste
    Log To Console    \n\n Estou executando minha funcao DEPOIS da suite de teste \n\n

teardwon dos meus testes
    Log To Console    \n\n Estou executando minha funcao DEPOIS da execucao do meu teste \n\n


setup default de teste
    Log To Console    \n\n Setup DEFAULT \n\n


keyword 1
    keyword2

keyword2
    ${test}    Catenate    ola     mundo
    Log     ola mundo