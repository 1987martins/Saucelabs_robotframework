*** Settings ***

Resource    ../../Data/GeneralInputData.robot
Resource    ../../Data/WebPagesData/LoginPageData.robot

Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Navigate To
     Go To    ${SAUCEDEMO_URL}

Enter Username
     Wait Until Page Contains Element    ${LOGINPAGE_USERNAME_FIELD}
     Input Text    ${LOGINPAGE_USERNAME_FIELD}  ${USERNAME}[0]

Enter Password
     Wait Until Page Contains Element    ${LOGINPAGE_PASSWORD_FIELD}
     Input Text     ${LOGINPAGE_PASSWORD_FIELD}    ${PASSWORD}[0]

Click Login Button
    Click Button    ${LOGIN_BUTTON}

Leave Username Field Empty
    Wait Until Page Contains Element    ${LOGINPAGE_USERNAME_FIELD}
    Input Text    ${LOGINPAGE_USERNAME_FIELD}  ${USERNAME}[2]

Error Message For Empty Username Field
    ${EXPECTED_ERROR_MESSAGE}    Set Variable    ${LOGIN_PAGE_ERROR_MESSAGES}[0]
    ${ACTUAL_ERROR_MESSAGE}    Get Text    ${LOGIN_PAGE_ERROR_MESSAGE_ELEMENT}
    Should Contain    ${ACTUAL_ERROR_MESSAGE}    ${EXPECTED_ERROR_MESSAGE}
    Sleep  1s

Leave Password Field Empty
    Wait Until Page Contains Element    ${LOGINPAGE_PASSWORD_FIELD}
    Input Text     ${LOGINPAGE_PASSWORD_FIELD}    ${PASSWORD}[1]

Error Message For Empty Password Field
    ${EXPECTED_ERROR_MESSAGE}    Set Variable    ${LOGIN_PAGE_ERROR_MESSAGES}[1]
    ${ACTUAL_ERROR_MESSAGE}    Get Text    ${LOGIN_PAGE_ERROR_MESSAGE_ELEMENT}
    Should Contain    ${ACTUAL_ERROR_MESSAGE}    ${EXPECTED_ERROR_MESSAGE}
    Sleep  1s

Invalid Username
    Wait Until Page Contains Element    ${LOGINPAGE_USERNAME_FIELD}
    Input Text    ${LOGINPAGE_USERNAME_FIELD}  ${USERNAME}[3]

Error Message For Invalid Username
    ${EXPECTED_ERROR_MESSAGE}    Set Variable    ${LOGIN_PAGE_ERROR_MESSAGES}[2]
    ${ACTUAL_ERROR_MESSAGE}    Get Text    ${LOGIN_PAGE_ERROR_MESSAGE_ELEMENT}
    Should Contain    ${ACTUAL_ERROR_MESSAGE}    ${EXPECTED_ERROR_MESSAGE}
    Sleep  1s

Invalid Password
    Wait Until Page Contains Element    ${LOGINPAGE_PASSWORD_FIELD}
    Input Text     ${LOGINPAGE_PASSWORD_FIELD}    ${PASSWORD}[2]

Error Message For Invalid Password
    ${EXPECTED_ERROR_MESSAGE}    Set Variable    ${LOGIN_PAGE_ERROR_MESSAGES}[2]
    ${ACTUAL_ERROR_MESSAGE}    Get Text    ${LOGIN_PAGE_ERROR_MESSAGE_ELEMENT}
    Should Contain    ${ACTUAL_ERROR_MESSAGE}    ${EXPECTED_ERROR_MESSAGE}
    Sleep  1s

Locked Out User
    Wait Until Page Contains Element    ${LOGINPAGE_USERNAME_FIELD}
    Input Text    ${LOGINPAGE_USERNAME_FIELD}  ${USERNAME}[1]

Error Message For Locked Out User
    ${EXPECTED_ERROR_MESSAGE}    Set Variable    ${LOGIN_PAGE_ERROR_MESSAGES}[3]
    ${ACTUAL_ERROR_MESSAGE}    Get Text    ${LOGIN_PAGE_ERROR_MESSAGE_ELEMENT}
    Should Contain    ${ACTUAL_ERROR_MESSAGE}    ${EXPECTED_ERROR_MESSAGE}
    Sleep  1s