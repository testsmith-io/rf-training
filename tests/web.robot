*** Settings ***
Library    Browser
Test Setup    Open browser and set context


*** Keywords ***
Open browser and set context
    New Browser    headless=False
    New Context    viewport={"width": 1800, "height": 800}
    New Page    https://practicesoftwaretesting.com

Login
    [Documentation]    Dit is wat documentatie...
    [Arguments]    ${email}    ${password}=welcome01
    Fill Text    [data-test='email']    ${email}
    Fill Text    [data-test='password']    ${password}
    Click    [data-test='login-submit']

*** Test Cases ***
Open website
    Click    [data-test='nav-contact']
    Get Title    contains    Testing

Login Success
    Click    [data-test='nav-sign-in']
    Login    customer@practicesoftwaretesting.com    welcome01
    Get Text    [data-test='page-title']    equals    My account
    

