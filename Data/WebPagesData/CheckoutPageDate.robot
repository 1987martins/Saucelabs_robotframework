*** Settings ***

*** Variables ***
#PAGE ELEMENTS
${CHECKOUT_PAGE_TITLE} =     xpath= //*[@id='header_container']/div[2]/span
${FIRST_NAME_FIELD} =    xpath= //*[@id='first-name']
${LAST_NAME_FIELD} =    xpath= //*[@id='last-name']
${ZIP_POSTAL_CODE_FIELD} =    xpath= //*[@id='postal-code']
${CONTINUE_BUTTON} =    xpath= //*[@id='continue']

#TEST DATA
${FIRST_NAME} =     Pete
${LAST_NAME} =    Pen
${ZIP_POSTAL_CODE} =    LV-1026