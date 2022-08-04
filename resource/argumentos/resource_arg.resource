*** Settings ***
Library     Collections

*** Variables ***
${base_email}   @robot.com

*** Keywords ***
Somar dois numeros
    [Arguments]    ${num_a}    ${num_b}
    ${soma}    Evaluate    ${num_a}+${num_b}
    RETURN     ${soma}

Somar dois numeros ${num_a} e ${num_b}
    ${soma}    Evaluate    ${num_a}+${num_b}
    RETURN     ${soma}

formando o email
    [Arguments]     ${nome}     ${sobrenome}     ${idade}
    ${email_pronto}      Catenate  ${nome}${sobrenome}${idade}${base_email}
    [Return]    ${email_pronto}

formando o email embutido ${nome} ${sobrenome} ${idade}
    ${email_pronto}      Catenate  ${nome}${sobrenome}${idade}${base_email}
    [Return]    ${email_pronto}