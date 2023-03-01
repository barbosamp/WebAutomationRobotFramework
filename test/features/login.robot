*** Settings ***
Documentation    Test scenarios for the login feature.
# Given -> Pre requesite / current state
# And -> Complement Step
# When -> Action for the expected result
# And -> Complement Step
# Then -> Expected Result

Resource    ../../src/config/package.resource

Test Setup    Open session
Test Teardown   Close session

*** Test Cases ***
Scenario: Login with success
    [Tags]    LOGIN      POSITIVO     SMOKE
    Given that the customer is on the app home screen
    And access the login screen
    When to enter login details       ${DATA_SET.LOGIN.EMAIL}     ${DATA_SET.LOGIN.PASSWORD}
    And click on element       ${LOGIN.BUTTON_SIGNIN}
    Then should see the My Account screen

Scenario: Invalid login
    [Tags]      LOGIN     NEGATIVO        REGRESSIVE
    Given that the customer is on the app home screen
    And access the login screen
    When to enter login details         ${DATA_SET.INVALID_LOGIN.EMAIL}      ${DATA_SET.INVALID_LOGIN.PASSWORD}
    And click on element       ${LOGIN.BUTTON_SIGNIN}
    Then should see the message      ${LOGIN.ERROR_TEXT}     ${MESSAGES.LOGIN.AUTHENTICATION_FAILED}
