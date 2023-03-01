*** Keywords ***
And access the register screen
  ${NEW_EMAIL}   FakerLibrary.Email
  Type Text      ${LOGIN.INPUT_EMAIL_REGISTER}     ${NEW_EMAIL}
  Click   ${LOGIN.BUTTON_CREATE}

And fill the form with valid data
  Click      ${REGISTER.RADIO_MR}
  ${FIRST_NAME}            FakerLibrary.First_Name
  Set Test Variable     ${FIRST_NAME}     ${FIRST_NAME}
  Type Text         ${REGISTER.INPUT_FIRST_NAME}         ${FIRST_NAME}

  ${LAST_NAME}            FakerLibrary.Last Name
  Set Suite Variable     ${LAST_NAME}     ${LAST_NAME}
  Type Text         ${REGISTER.INPUT_LAST_NAME}    ${LAST_NAME}

  Type Text         ${REGISTER.INPUT_COMPANY}      ${FIRST_NAME}SA

  ${PASSWORD}           Password    	length=10  special_chars=True  digits=True  upper_case=True  lower_case=True
  Type Text         ${REGISTER.INPUT_PASSWORD}      ${PASSWORD}
  Select Options By      ${REGISTER.SELECT_DAY}          value                  5
  Select Options By      ${REGISTER.SELECT_MONTH}          value                  3
  Select Options By      ${REGISTER.SELECT_YEAR}          value                  1990

  Type Text          ${REGISTER.INPUT_ADDRESS_1}            Rua Teste
  Type Text          ${REGISTER.INPUT_ADDRESS_2}            Apartamento 10
  Type Text          ${REGISTER.INPUT_CITY}                Barueri

  Select Options By       ${REGISTER.SELECT_STATE}     label                Mississippi
  Type Text          ${REGISTER.INPUT_POST_CODE}       01234

  ${PHONE}         Phone Number
  Type Text          ${REGISTER.INPUT_MOBILE_PHONE}       ${PHONE}
  Type Text          ${REGISTER.INPUT_PHONE}         ${PHONE}