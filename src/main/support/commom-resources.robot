*** Comments ***
Documentation
... Suite with common system features
... Resources used in all scenarios

*** Settings ***
Library     Browser
Library     FakerLibrary    locale=pt_BR

*** Keywords ***
Open Website
    New Persistent Context    headless=false     ignoreHTTPSErrors=true
    Go To   https://www.instagram.com/

Close Website
    Take Screenshot
    Close Browser