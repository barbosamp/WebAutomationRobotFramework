*** Settings ***
Documentation    Settings for start or end test execution

*** Keywords ***
Open session
    New Browser    ${SETUP.BROWSER}        headless=true
    Set Browser Timeout    ${SETUP.TIMEOUT}
    New Page       ${SETUP.URL}

Close session
    Take Screenshot 
    Close Browser
