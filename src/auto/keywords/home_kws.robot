*** Settings ***
Documentation        Home screen keywords.

Resource                  ../../config/package.resource

*** Keywords ***
Given that the customer is on the app home screen
    Wait For Elements State       ${HOME.BUTTON_SIGNIN}        visible

And access the login screen
    Click                       ${HOME.BUTTON_SIGNIN}
