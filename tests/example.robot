
*** Variables ***
&{database_connection}    host=127.0.0.1    port=3306    user=admin    password=welcome01

*** Keywords ***
Login
    [Arguments]    ${login}    ${password}
    [Documentation]    Dit keyword logt in blabla..
    No Operation

*** Test Cases ***
Login testje
    # Login    test@test.nl    WELKOM01
    # Log To Console    Hello world
    Log To Console    ${database_connection}[host] ${database_connection}[port]