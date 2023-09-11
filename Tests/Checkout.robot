*** Settings ***
Documentation    This is test SauceDemo full checkout for product
Resource    ../Resources/Checkout.robot
Resource    ../Resources/CommonWeb.robot

Test Setup    Begin Web Test
Test Teardown   End Web Test


*** Variables ***

*** Keywords ***

*** Test Cases ***

# robot -d results tests/Checkout.robot

Successfully completing checkout for product
    [Tags]    Checkout
    Given I have to navigate to SauceDemo web site
    When I login with the valid username and password
    Then I am successfully logged in SauceDemo

    Given I am logged in SauceDemo
    When I add to cart one Sauce Labs Bike Light pressing Add to Cart button
    Then I go to check the Cart page

    Given I am successfully redirected to Cart page
    And I check if one Sauce Labs Bike Light is added in the shopping cart
    When I press Checkout button
    Then I am redirected to Checkout page

    Given I am successfully redirected to Checkout page
    When I populate all field with the required information
    And Press Continue button
    Then I am redirected to Checkout: Overview page

    Given I am successfully redirected to Checkout: Overview page
    When I press Finish button
    Then I am redirected to Checkout: Complete page

    Given I am successfully redirected to Checkout: Complete page
    When I press Back Home button
    Then I am redirected to the first page