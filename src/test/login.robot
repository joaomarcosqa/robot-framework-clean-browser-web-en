*** Comments ***
Documentation
...Suite with login tests

*** Settings ***
Resource         ../main/support/base.robot
Resource         ../main/pages/login.robot

Test Setup       Open Website
Test Teardown    Close Website

*** Test Cases ***
Test Case 001: login successfully
    Given im on the site
    # When accessing the website login page
    # Then i must login successfully

