*** Settings ***



*** Variables ***
#PAGE ELEMENTS
${LOGINPAGE_USERNAME_FIELD} =  xpath= //*[@id='user-name']
${LOGINPAGE_PASSWORD_FIELD} =  xpath= //*[@id='password']
${LOGIN_BUTTON} =    xpath= //*[@id='login-button']
${LOGIN_PAGE_ERROR_MESSAGE_ELEMENT} =   css= h3


#TEST DATA
@{USERNAME} =   standard_user   locked_out_user   ${EMPTY}  Peter
@{PASSWORD} =   secret_sauce    ${EMPTY}    PEN
@{LOGIN_PAGE_ERROR_MESSAGES}=   Epic sadface: Username is required  Epic sadface: Password is required  Epic sadface: Username and password do not match any user in this service   Epic sadface: Sorry, this user has been locked out.





