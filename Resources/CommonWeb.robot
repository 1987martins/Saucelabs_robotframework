*** Settings ***

Library  SeleniumLibrary
Resource    ../Data/GeneralInputData.robot

*** Variables ***

*** Keywords ***

Begin Web Test
    Open Browser  data:,  ${BROWSER}
    Maximize Browser Window

End Web Test
    Close All Browsers