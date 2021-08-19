*** Settings ***
Documentation    Configurações de inicialização e finalização dos testes.

*** Keywords ***
Abrir sessão
    # Abrir o navegador.
    Open Browser    ${CONFIG.URL}      ${CONFIG.NAVEGADOR}
    Set Selenium Timeout    ${CONFIG.TIMEOUT}
    # Maximizar o navegador
    Maximize Browser Window

Encerrar sessão
    Capture Page Screenshot
    Close Browser
