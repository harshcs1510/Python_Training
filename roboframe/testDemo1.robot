*** Settings ***
Documentation    To Validate a login From
Library    SeleniumLibrary

*** Test Cases ***
Validate Unsuccessful Login
    Open the browser with saucedemo
    Fill the login form
    wait until it checks and display error message
    verify error message is correct

Validate Successful Login
    Open the browser with saucedemo
    Fill correct details
    verify login


*** Keywords ***
Open the browser with saucedemo
    Open Browser    https://www.saucedemo.com/    chrome

Fill the Login form
    Input Text    user-name    standard_user
    Input Password    password    secret_sauce123
    Click Button    login-button

fill correct details
    Input Text    user-name    standard_user
    Input Password    password    secret_sauce
    Click Button    login-button
    
verify login
    Wait Until Element is Visible    //*[@id="header_container"]/div[2]/span

wait until it checks and display error message
    Wait Until Element is Visible    xpath://*[@id="login_button_container"]/div/form/div[3]/h3

verify error message is correct
    ${result}    Get Text    xpath://*[@id="login_button_container"]/div/form/div[3]/h3
    Should Be Equal As Strings    ${result}    Epic sadface: Username and password do not match any user in this service


    