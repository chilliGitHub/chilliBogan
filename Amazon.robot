*** Settings ***
Documentation  This is some basic information about the whole suite
Library  Selenium2Library

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke
    Open browser  http://www.amazon.com  chrome
    Wait until page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  Ferrari 458
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    wait until page contains  results for "Ferrari 458"
    click link  css=#result_0 a.s-access-detail-page
    wait until page contains  Back to search results
    click button  id=add-to-cart-button
    wait until page contains  Cart subtotal
    wait until page contains  (1 item):
    click link  Proceed to checkout (1 item)
    element should be visible  id=signInSubmit  Sign in
    Close browser

*** Keywords ***

