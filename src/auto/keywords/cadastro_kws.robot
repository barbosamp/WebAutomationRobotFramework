*** Keywords ***
E acessar a tela de cadastro
  Wait Until Element Is Visible      ${LOGIN.INPUT_EMAIL_CADASTRO}
  ${NOVO_EMAIL}   FakerLibrary.Email
  Input Text      ${LOGIN.INPUT_EMAIL_CADASTRO}     ${NOVO_EMAIL}
  Click Element   ${LOGIN.BOTAO_CREATE}

E preencher o formulário com dados válidos
  Wait Until Element Is Visible        ${CADASTRO.RADIO_MR}
  Click Element      ${CADASTRO.RADIO_MR}
  ${NOME}            FakerLibrary.First Name
  Set Test Variable     ${NOME}     ${NOME}
  Input Text         ${CADASTRO.INPUT_NOME}         ${NOME}

  ${SOBRENOME}            FakerLibrary.Last Name
  Set Suite Variable     ${SOBRENOME}     ${SOBRENOME}
  Input Text         ${CADASTRO.INPUT_SOBRENOME}    ${SOBRENOME}

  ${SENHA}           Password    	length=10  special_chars=True  digits=True  upper_case=True  lower_case=True
  Input Text         ${CADASTRO.INPUT_SENHA}      ${SENHA}

  Select From List By Value      ${CADASTRO.SELECT_DIA}      5
  Select From List By Value      ${CADASTRO.SELECT_MES}      3
  Select From List By Value      ${CADASTRO.SELECT_ANO}      1990

  Input Text          ${CADASTRO.INPUT_ENDERECO_1}            Rua Teste
  Input Text          ${CADASTRO.INPUT_ENDERECO_2}            Apartamento 10
  Input Text          ${CADASTRO.INPUT_CIDADE}                Barueri

  Select From List By Label       ${CADASTRO.SELECT_ESTADO}   Mississippi
  Input Text          ${CADASTRO.INPUT_CEP}       01234

  ${TELEFONE}         Phone Number
  Input Text          ${CADASTRO.INPUT_CELULAR}       ${TELEFONE}
