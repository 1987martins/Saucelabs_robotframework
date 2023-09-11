*** Settings ***
Library    SeleniumLibrary

Resource    ../../Data/WebPagesData/CheckoutSuccessPageData.robot

*** Keywords ***

Verify Checkout Success page
    Wait Until Page Contains    ${CHECKOUT_SUCCESS_PAGE_TITLE}
    Sleep    1s
Click Back Home Button
    Click Button    ${BACK_HOME_BUTTON}
    Sleep    1s