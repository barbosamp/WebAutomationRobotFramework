*** Keywords ***
Então deve visualizar a tela My Account
    ${TITULO_ATUAL}       Get Text    ${MINHA_CONTA.TITULO}           ==          MY ACCOUNT   
    # Should Be Equal       ${TITULO_ATUAL}    MY ACCOUNT     ignore_case=True
