*** Comments ***
Documentation
... Suite with system login resources

*** Settings ***
Resource         ../support/base.robot

*** Variables ***
${loginVariable}

*** Keywords ***
Given im on the site
    Sleep                            5

When accessing the website login page
    Wait for Elements State               
    Click
    Wait for Elements State          

Then i must login successfully
    Fill Text
    Fill Text
    Wait for Elements State
    Click
    Wait for Elements State