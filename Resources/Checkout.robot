*** Settings ***
Resource     ../Resources/PageObjects/LoginPage.robot
Resource    ../Resources/PageObjects/InventoryPage.robot
Resource    ../Resources/PageObjects/CartPage.robot
Resource    ../Resources/PageObjects/CheckoutPage.robot
Resource    ../Resources/PageObjects/CheckoutOverviewPage.robot
Resource    ../Resources/PageObjects/CheckoutSuccessPage.robot

*** Keywords ***

I have to navigate to SauceDemo website
    LoginPage.Navigate To
I login with the valid username and password
    LoginPage.Enter Username
    LoginPage.Enter Password
    LoginPage.Click Login Button
I am successfully logged in SauceDemo
    InventoryPage.Verify Inventory Page

I am logged in SauceDemo
    InventoryPage.Verify Inventory Page
I add to cart one Sauce Labs Bike Light pressing Add to Cart button
    InventoryPage.Add item to cart
I go to check the Cart page
    InventoryPage.Click on Cart Icon


I am successfully redirected to Cart page
    CartPage.Verify Cart Page
I check if one Sauce Labs Bike Light is added in the shopping cart
    CartPage.Verify Item In Cart
I press Checkout button
    CartPage.Click Checkout Button
I am redirected to Checkout page
    CheckoutPage.Verify Checkout Page


I am successfully redirected to Checkout page
    CheckoutPage.Verify Checkout Page
I populate all field with the required information
    CheckoutPage.Populate First Name
    CheckoutPage.Populate Last Name
    CheckoutPage.Populate Zip/Postal code

Press Continue button
    CheckoutPage.Click on Continue Button
I am redirected to Checkout: Overview page
    CheckoutOverviewPage.Verify Checkout Overview page


I am successfully redirected to Checkout: Overview page
    CheckoutOverviewPage.Verify Checkout Overview page
I press Finish button
    CheckoutOverviewPage.Click on Finish Button
I am redirected to Checkout: Complete page
    CheckoutSuccessPage.Verify Checkout Success page

I am successfully redirected to Checkout: Complete page
    CheckoutSuccessPage.Verify Checkout Success page
I press Back Home button
    CheckoutSuccessPage.Click Back Home Button
I am redirected to the first page
    InventoryPage.Verify Inventory Page


I click on Cart icon
    InventoryPage.Click on Cart Icon

I am redirected to Cart page
    CartPage.Verify Cart Page

I populate all required fields with missing out name field
    CheckoutPage.Populate First Name For Error 1
    CheckoutPage.Populate Last Name For Error 1
    CheckoutPage.Populate Zip/Postal code For Error 1

I populate all required fields with missing out last name field
    CheckoutPage.Populate First Name For Error 2
    CheckoutPage.Populate Last Name For Error 2
    CheckoutPage.Populate Zip/Postal code For Error 2

I populate all required fields with missing out zip/postal code field
    CheckoutPage.Populate First Name For Error 3
    CheckoutPage.Populate Last Name For Error 3
    CheckoutPage.Populate Zip/Postal code For Error 3

I receive Error message that I need to populate name field
    CheckoutPage.Error Message For Empty Name Field

I receive Error message that I need to populate last name field
    CheckoutPage.Error Message For Empty Last Name Field

I receive Error message that I need to populate zip/postal code name field
    CheckoutPage.Error Message For Empty Zip/Postal Code Field

I am still on the Checkout page
    CheckoutPage.Verify Checkout Page