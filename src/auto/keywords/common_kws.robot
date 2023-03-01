*** Keywords ***
And click on element
    [Arguments]   ${ELEMENT}
    Click       ${ELEMENT}

Then should see the message
    [Arguments]      ${ELEMENT}      ${EXPECTED}
    ${ACTUAL}       Get Text      ${ELEMENT}
    Should Be Equal         ${ACTUAL}    ${EXPECTED}

When clicking on the element
  [Arguments]       ${ELEMENT}
  And click on element    ${ELEMENT}
