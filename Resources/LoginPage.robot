*** Settings ***
Resource     ../Resources/PageObjects/LoginPage.robot
Resource    ../Resources/PageObjects/InventoryPage.robot

*** Keywords ***

I have to navigate to SauceDemo website
    LoginPage.Navigate To
I login with the valid username and password
    LoginPage.Enter Username
    LoginPage.Enter Password
    LoginPage.Click Login Button
I am successfully logged in SauceDemo
    InventoryPage.Verify Inventory Page

I login with valid password and leaving username field empty
    LoginPage.Leave Username Field Empty
    LoginPage.Enter Password
    LoginPage.Click Login Button
I see login error message 'Epic sadface: Username is required'
    LoginPage.Error Message For Empty Username Field

I login with valid username and leaving password field empty
    LoginPage.Enter Username
    LoginPage.Leave Password Field Empty
    LoginPage.Click Login Button
I see login error message 'Epic sadface: Password is required'
    LoginPage.Error Message For Empty Password Field

I login with invalid username and valid password field empty
    LoginPage.Invalid Username
    LoginPage.Enter Password
    LoginPage.Click Login Button
I see login error message 'Epic sadface: Username and password do not match any user in this service'
    LoginPage.Error Message For Invalid Username

I login with valid username and invalid password field empty
    LoginPage.Enter Username
    LoginPage.Invalid Password
    LoginPage.Click Login Button
I see password error message 'Epic sadface: Username and password do not match any user in this service'
    LoginPage.Error Message For Invalid Password

I login with username for locked out user and valid password field empty
    LoginPage.Locked Out User
    LoginPage.Enter Password
    LoginPage.Click Login Button
I see login error message 'Epic sadface: Sorry, this user has been locked out.'
    LoginPage.Error Message For Locked Out User





