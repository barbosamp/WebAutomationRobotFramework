*** Settings ***

Resource        ../../config/package.resource

*** Keywords ***
Quando realizar login com sucesso
    Wait Until Element Is Visible       ${LOGIN.INPUT_EMAIL}
    Input Text      ${LOGIN.INPUT_EMAIL}      rasafa9934@ovooovo.com
    Input Text      ${LOGIN.INPUT_SENHA}      Teste@123
    Click Element   ${LOGIN.BOTAO_SIGNIN}
