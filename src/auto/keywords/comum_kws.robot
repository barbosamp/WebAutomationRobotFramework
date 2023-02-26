*** Keywords ***
E clicar no elemento
    [Arguments]   ${ELEMENTO}
    Click       ${ELEMENTO}

Então deve visualizar a mensagem
    [Arguments]      ${ELEMENTO}      ${MENSAGEM_ESPERADA}
    ${MENSAGEM_ATUAL}       Get Text      ${ELEMENTO}
    Should Be Equal         ${MENSAGEM_ATUAL}    ${MENSAGEM_ESPERADA}

Quando clicar no elemento
  [Arguments]       ${ELEMENTO}
  E clicar no elemento    ${ELEMENTO}
