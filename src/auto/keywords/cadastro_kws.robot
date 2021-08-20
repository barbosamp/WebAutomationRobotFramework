*** Keywords ***
E acessar a tela de cadastro
  Wait Until Element Is Visible      ${LOGIN.INPUT_EMAIL_CADASTRO}
  ${NOVO_EMAIL}   FakerLibrary.Email
  Input Text      ${LOGIN.INPUT_EMAIL_CADASTRO}     ${NOVO_EMAIL}
  Click Element   ${LOGIN.BOTAO_CREATE}
