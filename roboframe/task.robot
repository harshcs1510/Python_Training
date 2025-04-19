*** Settings ***
Library    BuiltIn
Library    Collections

*** Test Cases ***
Add And Remove Items In Dictionary

    ${ylia}=    Create Dictionary    name=Kousei    age=14
    Log    Original Dictionary: ${ylia}

    #Add
    Set To Dictionary    ${ylia}    instrument=piano
    Log    After Adding: ${ylia}

    #Remove
    Remove From Dictionary    ${ylia}    age
    Log    After removing: ${ylia}