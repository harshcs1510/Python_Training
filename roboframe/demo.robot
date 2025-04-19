***SETTINGS***
library SeleniumLibrary

***VARIABLES***
${URL}  https://www.saucedemo.com/
${USERNAME} standard_user
${PASSWORD} secret_sauce

***TEST CASES***

Successful Login Test
    Open SauceDemo Website
    Enter Valid Credentials
    Submit Login Form
    Verify Successful Login
    Close Browser

***KEYWORDS***

Open SauceDemo Website
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Enter Valid Credentials
    Input Text    id:user-name    ${USERNAME}
    Input Text    id:password    ${PASSWORD}

Submit Login Form
    Click Button    id:login_button
