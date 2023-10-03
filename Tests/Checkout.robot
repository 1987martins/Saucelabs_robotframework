*** Settings ***

Documentation    This is to test SauceDemo checkout flow
Resource    ../Resources/Checkout.robot
Resource    ../Resources/CommonWeb.robot

Test Setup    Begin Web Test
Test Teardown   End Web Test

*** Variables ***

*** Keywords ***

*** Test Cases ***

Successfully completing checkout for product
    [Tags]    Checkout
    Given I have to navigate to SauceDemo website
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

Checking if user can remove item from the cart
       [Tags]    Remove item from the cart
    Given I have to navigate to SauceDemo website
    When I login with the valid username and password
    Then I am successfully logged in SauceDemo

    Given I am logged in SauceDemo
    When I add to cart one Sauce Labs Backpack pressing Add to Cart button
    Then I go to check the Cart page

    Given I am successfully redirected to Cart page
    And I check if Sauce Labs Backpack is added in the shopping cart
    When I click on Remove button
    Then Item has been removed from the cart and the cart is empty

Checking if correct error messages appears in Checkout page if Name field is left emtpy
    [Tags]   CheckoutErrorMessage
    Given I have to navigate to SauceDemo web site
    When I login with the valid username and password
    Then I am successfully logged in SauceDemo

    Given I am logged in SauceDemo
    When I click on Cart icon
    Then I am redirected to Cart page

    Given I am successfully redirected to Cart page
    When I press Checkout button
    Then I am redirected to Checkout page

    Given I am successfully redirected to Checkout page
    When I populate all required fields with missing out name field
    And Press Continue button
    Then I receive Error message that I need to populate name field

Checking if correct error messages appears in Checkout page if Last name field is left emtpy
    [Tags]   CheckoutErrorMessage
    Given I have to navigate to SauceDemo web site
    When I login with the valid username and password
    Then I am successfully logged in SauceDemo

    Given I am logged in SauceDemo
    When I click on Cart icon
    Then I am redirected to Cart page

    Given I am successfully redirected to Cart page
    When I press Checkout button
    Then I am redirected to Checkout page

    Given I am successfully redirected to Checkout page
    When I populate all required fields with missing out last name field
    And Press Continue button
    Then I receive Error message that I need to populate last name field

Checking if correct error messages appears in Checkout page if Zip/postal field is left emtpy
    [Tags]   CheckoutErrorMessage
    Given I have to navigate to SauceDemo web site
    When I login with the valid username and password
    Then I am successfully logged in SauceDemo

    Given I am logged in SauceDemo
    When I click on Cart icon
    Then I am redirected to Cart page

    Given I am successfully redirected to Cart page
    When I press Checkout button
    Then I am redirected to Checkout page

    Given I am successfully redirected to Checkout page
    When I populate all required fields with missing out zip/postal code field
    And Press Continue button
    Then I receive Error message that I need to populate zip/postal code name field