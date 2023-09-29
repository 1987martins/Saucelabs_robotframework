*** Settings ***

Library    SeleniumLibrary

Resource    ../../Data/WebPagesData/CheckoutOverviewPageData.robot

*** Keywords ***

Verify Checkout Overview page
    Wait Until Page Contains Element   ${CHECKOUT_OVERVIEW_PAGE_TITLE}
    Sleep    1s
Click on Finish Button
    Click Button    ${FINISH_BUTTON}
    Sleep    1s