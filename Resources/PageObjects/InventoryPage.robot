*** Settings ***

Library    SeleniumLibrary

Resource    ../../Data/WebPagesData/InventoryPage.robot

*** Keywords ***

Verify Inventory Page
    Wait Until Page Contains Element    ${PAGE_TITLE}
    Sleep   1s

Add Sauce Labs Bike Light
    Click Button    ${ADD_BUTTON_SL_BIKE_LIGHT}

Click on Cart Icon
    Click Element    ${CART_ICON}

Add Sauce Labs Backpack
    Click Button    ${ADD_BUTTON_FOR_SL_BACKPACK}