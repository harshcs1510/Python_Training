*** Settings ***
Documentation    To Validate a login From
Library    SeleniumLibrary
Test Setup    Open the browser with saucedemo
Test Teardown    Close Browser
Resource    resource.robot

*** Test Cases ***
Validate Cards Display in shopping page
    Fill The Login Form    ${user_name}    ${valid_password}
    wait till an element is Visible    //*[@id="header_container"]/div[2]
    Verify Card Titles In The Shop Page
    Select the Card    Sauce Labs Fleece Jacket

*** Keywords ***
Fill The Login Form
    
    [Arguments]    ${username}    ${password}
    Input Text    user-name    ${username}
    Input password    password    ${password}
    Click Button    login-button

wait till an element is Visible
    
    [Arguments]    ${element}
     Wait Until Element is Visible    ${element}

Verify Card Titles In The Shop Page
    ${expected_list}=    Create List
    ...    Sauce Labs Backpack
    ...    Sauce Labs Bike Light
    ...    Sauce Labs Bolt T-Shirt
    ...    Sauce Labs Fleece Jacket
    ...    Sauce Labs Onesie
    ...    Test.allTheThings() T-Shirt (Red)
    ${elements}=    Get WebElements    css:.inventory_item_name
    FOR    ${element}    IN    @{elements}
        ${text}=    Get Text    ${element}
        Should Contain    ${expected_list}    ${text}
        Log    Validate Card Title: ${text}
    END

Select the Card

    [Arguments]    ${card_name}
    ${elements}=    Get WebElements    css:.inventory_item_name
    ${index}=    Set Variable    1
    FOR    ${element}    IN    @{elements}
        ${text}=    Get Text    ${element}
        Exit For Loop If    '${card_name}'=='${text}'
            ${index}=    Evaluate    ${index}+1
    END
    Log    ${index}
    Click Button    xpath:(//*[@class='pricebar'])[${index}]/button