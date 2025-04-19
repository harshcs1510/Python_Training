*** Settings ***
Documentation    To Validate a login From
Library    SeleniumLibrary
#Test Teardown    Close Browser
 
 
*** Test Cases ***
Validate Unsuccessful Login
    Open the browser with saucedemo
    Fill the login From
    wait until it checks and display error message
    verify error message is correct
 
Validate Successful Login
    Open the browser with saucedemo
    Fill Correct details
    verify login
 
 
 
*** keywords ***
 
 
Open the browser with saucedemo
    Open Browser    https://www.saucedemo.com/    chrome    
 
 
Fill Correct details
    Input Text    user-name    standard_user
    Input password    password    secret_sauce
    Click Button    login-button
 
verify login
     Wait Until Element is Visible    //*[@id="header_container"]
   
 
Fill the login From
    Input Text    user-name    standard_user
    Input password    password    secret_sauce123
    Click Button    login-button
 
 
wait until it checks and display error message
    Wait Until Element is Visible    xpath://*[@id="login_button_container"]/div/form/div[3]/h3
 
 
verify error message is correct
    ${result}    Get Text    xpath://*[@id="login_button_container"]/div/form/div[3]/h3
    Should Be Equal As Strings    ${result}    Epic sadface: Username and password do not match any user in this service