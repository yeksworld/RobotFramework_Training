*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.cheapoair.com/flights/book-now-pay-later-flights
${browser}      chrome
${title}        Book Now Pay Later Flights with Cheapoair

*** Test Cases ***
Open Page with Variables
    open browser    ${url}      ${browser}
    maximize browser window
    TITLE SHOULD BE     ${title}
    close window



*** Keyword ***