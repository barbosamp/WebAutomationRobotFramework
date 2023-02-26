*** Settings ***
Documentation    Cenários de testes relacionado ao login da aplicação.
# Dado -> Pré requisito/ estado atual
# E -> Passo complementar
# Quando -> Ação para um resultado esperado
# E -> Passo complementar
# Entao -> Resultado esperado

Resource    ../../src/config/package.resource

Test Setup    Abrir sessão
Test Teardown   Encerrar sessão

*** Test Cases ***
Cenario: Login com sucesso
    [Tags]    LOGIN      POSITIVO     SMOKE
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de login
    Quando inserir os dados de login       ${MASSA_DADOS.LOGIN.EMAIL}     ${MASSA_DADOS.LOGIN.SENHA}
    E clicar no elemento       ${LOGIN.BOTAO_SIGNIN}
    Então deve visualizar a tela My Account

Cenario: Login com credenciais inválidas
    [Tags]      LOGIN     NEGATIVO        REGRESSIVO
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de login
    Quando inserir os dados de login         ${MASSA_DADOS.LOGIN_INVALIDO.EMAIL}      ${MASSA_DADOS.LOGIN_INVALIDO.SENHA}
    E clicar no elemento       ${LOGIN.BOTAO_SIGNIN}
    Então deve visualizar a mensagem      ${LOGIN.TEXTO_ERRO}     ${MENSAGENS.LOGIN.AUTHENTICATION_FAILED}
