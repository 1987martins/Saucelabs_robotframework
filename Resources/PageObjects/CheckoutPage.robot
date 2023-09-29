*** Settings ***

Library    SeleniumLibrary

Resource    ../../Data/WebPagesData/CheckoutPageData.robot

*** Keywords ***

Verify Checkout Page
    Wait Until Page Contains Element   ${CHECKOUT_PAGE_TITLE}
    Sleep    1s

Populate First Name
    Input Text    ${FIRST_NAME_FIELD}    ${FIRST_NAME}[0]

Populate Last Name
    Input Text    ${LAST_NAME_FIELD}    ${LAST_NAME}[0]

Populate Zip/Postal code
    Input Text     ${ZIP_POSTAL_CODE_FIELD}    ${ZIP_POSTAL_CODE}[0]

Click on Continue Button
    Click Button    ${CONTINUE_BUTTON}

Populate First Name For Error 1
    Input Text    ${FIRST_NAME_FIELD}    ${FIRST_NAME}[1]

Populate Last Name For Error 1
    Input Text    ${LAST_NAME_FIELD}    ${LAST_NAME}[0]

Populate Zip/Postal code For Error 1
    Input Text     ${ZIP_POSTAL_CODE_FIELD}    ${ZIP_POSTAL_CODE}[0]

Error Message For Empty Name Field
    ${expected_substring}    Set Variable    ${CHECKOUT_PAGE_ERROR_MESSAGE}[0]
    ${actual_error_message}    Get Text    ${CHECKOUT_PAGE_ERROR_MESSAGE_LOCATOR}
    Should Contain    ${actual_error_message}    ${expected_substring}
    Sleep  2s

Populate First Name For Error 2
    Input Text    ${FIRST_NAME_FIELD}    ${FIRST_NAME}[0]

Populate Last Name For Error 2
    Input Text    ${LAST_NAME_FIELD}    ${LAST_NAME}[1]

Populate Zip/Postal code For Error 2
    Input Text     ${ZIP_POSTAL_CODE_FIELD}    ${ZIP_POSTAL_CODE}[0]

Error Message For Empty Last Name Field
    ${expected_substring}    Set Variable    ${CHECKOUT_PAGE_ERROR_MESSAGE}[1]
    ${actual_error_message}    Get Text    ${CHECKOUT_PAGE_ERROR_MESSAGE_LOCATOR}
    Should Contain    ${actual_error_message}    ${expected_substring}
    Sleep  2s

Populate First Name For Error 3
    Input Text    ${FIRST_NAME_FIELD}    ${FIRST_NAME}[0]

Populate Last Name For Error 3
    Input Text    ${LAST_NAME_FIELD}    ${LAST_NAME}[0]

Populate Zip/Postal code For Error 3
    Input Text     ${ZIP_POSTAL_CODE_FIELD}    ${ZIP_POSTAL_CODE}[1]

Error Message For Empty Zip/Postal Code Field
    ${EXPECTED_ERROR_MESSAGE}    Set Variable    ${CHECKOUT_PAGE_ERROR_MESSAGE}[2]
    ${ACTUAL_ERROR_MESSAGE}    Get Text    ${CHECKOUT_PAGE_ERROR_MESSAGE_LOCATOR}
    Should Contain    ${ACTUAL_ERROR_MESSAGE}    ${EXPECTED_ERROR_MESSAGE}
    Sleep  2s