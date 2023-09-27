*** Settings ***
Library    SeleniumLibrary

Resource    ../../Data/WebPagesData/CartPageData.robot

*** Keywords ***

Verify Cart Page
    Wait Until Page Contains Element  ${CART_PAGE_TITLE}
    Sleep    1s

Verify Item In Cart
    Wait Until Page Contains Element   ${ITEM_TITLE_IN_CART}
    Sleep    1s

Click Checkout Button
    Click Button    ${CHECKOUT_BUTTON}
    Sleep    1s