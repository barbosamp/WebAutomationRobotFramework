*** Keywords ***
E acessar a tela de cadastro
  ${NOVO_EMAIL}   FakerLibrary.Email
  Type Text      ${LOGIN.INPUT_EMAIL_CADASTRO}     ${NOVO_EMAIL}
  Click   ${LOGIN.BOTAO_CREATE}

E preencher o formulário com dados válidos
  Click      ${CADASTRO.RADIO_MR}
  ${NOME}            FakerLibrary.First Name
  Set Test Variable     ${NOME}     ${NOME}
  Type Text         ${CADASTRO.INPUT_NOME}         ${NOME}

  ${SOBRENOME}            FakerLibrary.Last Name
  Set Suite Variable     ${SOBRENOME}     ${SOBRENOME}
  Type Text         ${CADASTRO.INPUT_SOBRENOME}    ${SOBRENOME}

  Type Text         ${CADASTRO.INPUT_COMPANY}      ${NOME}SA

  ${SENHA}           Password    	length=10  special_chars=True  digits=True  upper_case=True  lower_case=True
  Type Text         ${CADASTRO.INPUT_SENHA}      ${SENHA}
  Select Options By      ${CADASTRO.SELECT_DIA}          value                  5
  Select Options By      ${CADASTRO.SELECT_MES}          value                  3
  Select Options By      ${CADASTRO.SELECT_ANO}          value                  1990

  Type Text          ${CADASTRO.INPUT_ENDERECO_1}            Rua Teste
  Type Text          ${CADASTRO.INPUT_ENDERECO_2}            Apartamento 10
  Type Text          ${CADASTRO.INPUT_CIDADE}                Barueri

  Select Options By       ${CADASTRO.SELECT_ESTADO}     label                Mississippi
  Type Text          ${CADASTRO.INPUT_CEP}       01234

  ${TELEFONE}         Phone Number
  Type Text          ${CADASTRO.INPUT_CELULAR}       ${TELEFONE}
  Type Text          ${CADASTRO.INPUT_PHONE}         ${TELEFONE}