*** Settings ***
Test Template    Login

*** Keywords ***
Login
    [Arguments]    ${email}    ${password}
    Log To Console    ${email} ${password}

*** Test Cases ***    email    password
login als klant    test@test.nl    welcome01
login als admin    admin@test.nl    welcome01