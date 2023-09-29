*** Settings ***
Documentation    This is test SauceDemo login
Resource   ../../Resources/LoginPage.robot
Resource   ../../Resources/CommonWeb.robot

Test Setup  Begin Web Test
Test Teardown   End Web Test


*** Variables ***

*** Keywords ***

*** Test Cases ***
Success Login
    [Tags]    Success Login
    Given I have to navigate to SauceDemo website
    When I login with the valid username and password
    Then I am successfully logged in SauceDemo