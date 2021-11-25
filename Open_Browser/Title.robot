*** Setting ***
Library     SeleniumLibrary

*** Test Cases ***
Open Login Page
    Open Browser    https://www.cheapoair.com/flights/book-now-pay-later-flights    chrome
    maximize browser window
    Title Should Be    Book Now Pay Later Flights with Cheapoair
    close window
