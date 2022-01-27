*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
OpenMainPage
    open browser    https://www.cheapoair.com/flights/book-now-pay-later-flights    chrome
    maximize browser window
    click button        xpath://button[@id='onetrust-accept-btn-handler']
    wait until page contains element        xpath://a[@title='Cars']
    click button        xpath://a[@title='Cars']


*** Keywords ***