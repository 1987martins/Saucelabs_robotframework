*** Settings ***

*** Variables ***
#PAGE ELEMENTS
${CHECKOUT_PAGE_TITLE} =     xpath= //*[@id='header_container']/div[2]/span
${FIRST_NAME_FIELD} =    xpath= //*[@id='first-name']
${LAST_NAME_FIELD} =    xpath= //*[@id='last-name']
${ZIP_POSTAL_CODE_FIELD} =    xpath= //*[@id='postal-code']
${CONTINUE_BUTTON} =    xpath= //*[@id='continue']
${ERROR_MESSAGE} =      css= h3

#TEST DATA
@{FIRST_NAME}   Pete    ${EMPTY}
@{LAST_NAME}    Fun     ${EMPTY}
@{ZIP_POSTAL_CODE}  LV2016  ${EMPTY}


