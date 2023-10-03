*** Settings ***

*** Variables ***

${CART_PAGE_TITLE} =    xpath=//*[@id='header_container']/div[2]/span
${ITEM_TITLE_IN_CART_SAUCE_LABS_BIKE_LIGHT} =     xpath=//*[@id='item_0_title_link']/div
${CHECKOUT_BUTTON} =    xpath= //*[@id='checkout']
${REMOVE_BUTTON} =      xpath= //*[@id='remove-sauce-labs-backpack']
${ITEM_TITLE_IN_CART_BACKPACK} =     xpath=//*[@id='item_4_title_link']/div

#TEST DATA
@{ITEMS_TITLE} =    Sauce Labs Bike Light   Sauce Labs Backpack