*** Settings ***
Resource     ../Resources/PageObjects/LoginPage.robot
Resource    ../Resources/PageObjects/InventoryPage.robot
Resource    ../Resources/PageObjects/CartPage.robot
Resource    ../Resources/PageObjects/CheckoutPage.robot
Resource    ../Resources/PageObjects/CheckoutOverviewPage.robot
Resource    ../Resources/PageObjects/CheckoutSuccessPage.robot

*** Keywords ***

I have to navigate to SauceDemo web site
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



