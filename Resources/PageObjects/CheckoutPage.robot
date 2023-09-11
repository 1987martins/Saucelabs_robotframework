*** Settings ***
Library    SeleniumLibrary

Resource    ../../Data/WebPagesData/CheckoutPageDate.robot

*** Keywords ***

Verify Checkout Page
    Wait Until Page Contains    ${CHECKOUT_PAGE_TITLE}
    Sleep    1s

Populate First Name
    Input Text    ${FIRST_NAME_FIELD}    ${FIRST_NAME}

Populate Last Name
    Input Text    ${LAST_NAME_FIELD}    ${LAST_NAME}

Populate Zip/Postal code
    Input Text     ${ZIP_POSTAL_CODE_FIELD}    ${ZIP_POSTAL_CODE}

Click on Continue Button
    Click Button    ${CONTINUE_BUTTON}