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

    Close the cookies
    close window



*** Keyword ***
Close the cookies
    click button    xpath://button[@id='onetrust-accept-btn-handler']