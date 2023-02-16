*** Comments ***
Documentation
... Suite with base system features
... Resources used in all scenarios

*** Settings ***
Library     Browser
Resource    commom-resources.robot

*** Variables ***
${loginVariable}       loginVariable
${registerVariable}    registerVariable

*** Keywords ***
Fill in Login
    [Arguments]                      ${emailTextField}                ${email}                            ${passwordTextfield}    ${password}    ${submit}
    Wait for Elements State    ${emailTextField}
    Fill Text                       ${emailTextField}                ${email}
    Fill Text                       ${passwordTextfield}             ${password}
    Click                    ${submit}

# Filling login
# Quando inserir dados validos
    # Run Keyword    Fill in Login    ${emailTextfield}    ${email}    ${password}

Fill in Registration
    [Arguments]                      ${firstNameTextField}            ${firstName}                        ${lastNameTextField}    ${lastName}    ${emailTextField}    ${email}    ${passwordTextField}    ${password}    ${registerButton}
    Wait for Elements State    ${firstNameTextField}
    Fill Text                       ${firstNameTextField}            ${firstName}
    Fill Text                       ${lastNameTextField}             ${lastName}
    Fill Text                       ${emailTextField}                ${email}
    Fill Text                       ${passwordTextField}             ${password}
    Click                    ${registerButton}

# Filling Registration
# Quando inserir dados validos no cadastro
#                      ${firstName}        FakerLibrary.Name
#                      ${lastName}         FakerLibrary.Name
#                      ${email}            FakerLibrary.Email
#                      ${password}         FakerLibrary.Password
#                      Run Keyword         Fill in registration     ${firstNameTextField}    ${firstName}    ${lastNameTextField}    ${lastName}    ${emailTextField}    ${email}    ${passwordTextField}    ${password}    ${registerButton}


Validate and Fill Text
    [Arguments]                      ${selector}                       ${text}
    Wait for Elements State    ${selector}                       30
    Fill Text                       ${selector}                       ${text}

# Validating and typing texts
    # Validate And Fill Text  ${emailTextfield}  teste
    # Validate And Fill Text  ${passwordTextfield}  teste

Validate and Click
    [Arguments]                      ${selector}
    Wait for Elements State    ${selector}                       30
    Click                    ${selector}

# Validating and Click
    # Validate And Click       ${submit}

Validate Text on Screen
    [Arguments]    ${selector}    ${text}
    ${get_text}=    Get Text    ${selector}
    Should Contain    ${get_text}    ${text}