*** Settings ***

Library    SeleniumLibrary

Resource    ../../Data/WebPagesData/CartPageData.robot

*** Keywords ***

Verify Cart Page
    Wait Until Page Contains Element  ${CART_PAGE_TITLE}
    Sleep    1s

Verify Bike Light Item In The Cart
    ${EXPECTED_ITEM}    Set Variable    ${ITEMS_TITLE}[0]
    ${ACTUAL_ITEM}    Get Text    ${ITEM_TITLE_IN_CART_SAUCE_LABS_BIKE_LIGHT}
    Should Contain    ${ACTUAL_ITEM}    ${EXPECTED_ITEM}
    Sleep  2s

Click Checkout Button
    Click Button    ${CHECKOUT_BUTTON}

Verify Backpack Item In The Cart
    ${EXPECTED_ITEM}    Set Variable    ${ITEMS_TITLE}[1]
    ${ACTUAL_ITEM}    Get Text    ${ITEM_TITLE_IN_CART_BACKPACK}
    Should Contain    ${ACTUAL_ITEM}    ${EXPECTED_ITEM}
    Sleep  2s

Click Remove Button
    Click Button    ${REMOVE_BUTTON}
    
Verify That Backpack Item Has Been Removed From The Cart
    Element Should Not Be Visible    ${ITEM_TITLE_IN_CART_BACKPACK}
