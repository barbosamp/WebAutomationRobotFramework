*** Settings ***

Resource        ../../config/package.resource

*** Keywords ***
Quando inserir os dados de login
    [Arguments]     ${EMAIL}    ${SENHA}
    Type Text      ${LOGIN.INPUT_EMAIL}           ${EMAIL}
    Type Text      ${LOGIN.INPUT_SENHA}           ${SENHA}
