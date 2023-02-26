*** Settings ***
Resource    ../../src/config/package.resource

Test Setup    Abrir sessão
Test Teardown   Encerrar sessão

*** Test Cases ***
Cenario: Validar cadastro com sucesso
    [Tags]    CADASTRO    POSITIVO    SMOKE
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de login
    E acessar a tela de cadastro
    E preencher o formulário com dados válidos
    Quando clicar no elemento     ${CADASTRO.BOTAO_REGISTER}
    Então deve visualizar a tela My Account
