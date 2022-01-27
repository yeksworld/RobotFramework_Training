*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.cheapoair.com/flights/book-now-pay-later-flights
${browser}      chrome
${title}        Book Now Pay Later Flights with Cheapoair

*** Test Cases ***
Open Page with Variables
    open browser    ${url}      ${browser}
    #you can use the variable like this line
    maximize browser window
    TITLE SHOULD BE     ${title}
    #you can use the keyword like this line
    #wait until location is      xpath://button[@id='onetrust-accept-btn-handler']
    #set selenium timeout    xpath://button[@id='onetrust-accept-btn-handler']
    Close the cookies
    Click the one way radio button
    close window



*** Keyword ***
Close the cookies
    click button        xpath://button[@id='onetrust-accept-btn-handler']
Click the one way radio button
    page should contain radio button    xpath://input[@id='onewayTrip']

    select radio button     tripType    ONEWAYTRIP

    radio button should be set to   tripType    ONEWAYTRIP