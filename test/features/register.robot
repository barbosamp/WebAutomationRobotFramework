*** Settings ***
Resource    ../../src/config/package.resource

Test Setup    Open session
Test Teardown   Close session

*** Test Cases ***
Scenario: Success on register
    [Tags]    REGISTER    POSITIVO    SMOKE
    Given that the customer is on the app home screen
    And access the login screen
    And access the register screen
    And fill the form with valid data
    When clicking on the element     ${REGISTER.BUTTON_REGISTER}
    Then should see the My Account screen
