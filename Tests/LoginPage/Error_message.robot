*** Settings ***

Documentation    These are tests to check error messages for Login page
Resource    ../../Resources/LoginPage.robot
Resource    ../../Resources/CommonWeb.robot

Test Setup    Begin Web Test
Test Teardown   End Web Test

*** Variables ***

*** Keywords ***

*** Test Cases ***
Error message - login field left empty
    [Tags]    LoginPage - error message for leaving username field empty
    Given I have to navigate to SauceDemo website
    When I login with valid password and leaving username field empty
    Then I see login error message 'Epic sadface: Username is required'

Error message - password field left empty
    [Tags]    LoginPage - error message for leaving password field empty
    Given I have to navigate to SauceDemo website
    When I login with valid username and leaving password field empty
    Then I see login error message 'Epic sadface: Password is required'

Error message - invalid username
    [Tags]    LoginPage - error message for invalid username
    Given I have to navigate to SauceDemo website
    When I login with invalid username and valid password field empty
    Then I see login error message 'Epic sadface: Username and password do not match any user in this service'

Error message - invalid password
    [Tags]    LoginPage - error message for invalid password
    Given I have to navigate to SauceDemo website
    When I login with valid username and invalid password field empty
    Then I see password error message 'Epic sadface: Username and password do not match any user in this service'

Error message - locked out user
    [Tags]    LoginPage - error message for locked out user
    Given I have to navigate to SauceDemo website
    When I login with username for locked out user and valid password field empty
    Then I see login error message 'Epic sadface: Sorry, this user has been locked out.'