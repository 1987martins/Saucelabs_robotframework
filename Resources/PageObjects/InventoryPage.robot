*** Settings ***

Library    SeleniumLibrary

Resource    ../../Data/WebPagesData/InventoryPage.robot

*** Keywords ***

Verify Inventory Page
    Wait Until Page Contains Element    ${PAGE_TITLE}
    Sleep   1s

Add item to cart
    Click Button    ${ADD_BUTTON_SL_BIKE_LIGHT}

Click on Cart Icon
    Click Element    ${CART_ICON}