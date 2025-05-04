*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browsers}  chrome
${url}  https://www.saucedemo.com/
*** Test Cases ***
logintosaucedemo
    open browser     ${url}      ${browsers}
    input text    id=user-name     standard_user
    input text    id=password     secret_sauce
    click element    id=login-button
    sleep    2 seconds
*** Keywords ***
