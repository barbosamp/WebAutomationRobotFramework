*** Settings ***
Documentation        Keywords relacionadas a tela home.

Resource                  ../../config/package.resource

*** Keywords ***
Dado que o cliente esteja na tela inicial da aplicação
    Wait For Elements State       ${HOME.BOTAO_SIGNIN}        visible

E acessar a tela de login
    Click                       ${HOME.BOTAO_SIGNIN}
