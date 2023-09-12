*** Settings ***

*** Variables ***
#PAGE ELEMENTS
${CHECKOUT_PAGE_TITLE} =     xpath= //*[@id='header_container']/div[2]/span
${FIRST_NAME_FIELD} =    xpath= //*[@id='first-name']
${LAST_NAME_FIELD} =    xpath= //*[@id='last-name']
${ZIP_POSTAL_CODE_FIELD} =    xpath= //*[@id='postal-code']
${CONTINUE_BUTTON} =    xpath= //*[@id='continue']
${ERROR_MESSAGE} =      xpath= //*[@id="checkout_info_container"]/div/form/div[1]/div[4]/h3

#TEST DATA
@{FIRST_NAME}   Pete  ""
@{LAST_NAME}    Fun  ""
@{ZIP_POSTAL_CODE}  LV2016  ""
@{ERROR_MESSAGE}    Error: First Name is required  Error: Last Name is required  Error: Postal Code is required

