*** Settings ***

Resource    ../../Data/GeneralInputData.robot
Resource    ../../Data/WebPagesData/LoginPageData.robot


Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Navigate To
     Go To    ${SAUCEDEMO_URL}

Enter Username
     Wait Until Page Contains    ${LOGINPAGE_USERNAME_FIELD}
     Input Text    ${LOGINPAGE_USERNAME_FIELD}  ${USERNAME}[0]


Enter Password
     Wait Until Page Contains    ${LOGINPAGE_PASSWORD_FIELD}
     Input Text     ${LOGINPAGE_PASSWORD_FIELD}    ${PASSWORD}


Click Login Button
    Click Button    ${LOGIN_BUTTON}

