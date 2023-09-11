*** Settings ***



*** Variables ***
@{USERNAME} =    standard_user     locked_out_user    problem_user     performance_glitch_user
${PASSWORD} =    secret_sauce
${LOGINPAGE_USERNAME_FIELD} =  xpath= //*[@id='user-name']
${LOGINPAGE_PASSWORD_FIELD} =  xpath= //*[@id='password']
${LOGIN_BUTTON} =    xpath= //*[@id='login-button']



