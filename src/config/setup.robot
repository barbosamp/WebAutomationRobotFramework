*** Settings ***
Documentation    Configurações de inicialização e finalização dos testes.

*** Keywords ***
Abrir sessão
    # Abrir o navegador.
    New Browser    ${CONFIG.NAVEGADOR}        headless=true
    Set Browser Timeout    ${CONFIG.TIMEOUT}
    New Page       ${CONFIG.URL}
    # Maximizar o navegador
    # Maximize Browser Window

Encerrar sessão
    Take Screenshot 
    Close Browser
