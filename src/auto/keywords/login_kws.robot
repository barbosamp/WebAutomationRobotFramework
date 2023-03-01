*** Settings ***

Resource        ../../config/package.resource

*** Keywords ***
When to enter login details
    [Arguments]     ${EMAIL}    ${PASSWORD}
    Type Text      ${LOGIN.INPUT_EMAIL}           ${EMAIL}
    Type Text      ${LOGIN.INPUT_PASSWORD}           ${PASSWORD}
