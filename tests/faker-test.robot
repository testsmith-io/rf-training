*** Settings ***
Library    FakerLibrary    locale=nl_nl
Suite Setup    Generate data

*** Keywords ***
Generate data
    ${firstname}    FakerLibrary.First Name
    ${lastname}    FakerLibrary.Last Name
    Log To Console    ${firstname} ${lastname}

*** Test Cases ***
Genereer data
    No Operation
