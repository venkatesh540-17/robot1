*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}     https://demowebshop.tricentis.com/register
*** Test Cases ***
regulartest

    open browser    ${url}     ${browser}
    maximize browser window
    #select radio button     Gender  M
    #set selenium speed    2 seconds
    #${time}=      get selenium timeout
    #log to console      ${time}
    #set selenium timeout    10 seconds
    #wait until page contains    Register    #default timeout 5 secs

    set selenium implicit wait      10 seconds
    CLICK ELEMENT    id=gender-male
    input text    name=FirstName    venkat
    input text    name=LastName     540
    input text    name=Email    sample@gmail.com
    input text    name=Password     admin123
    input text    name=ConfirmPassword  admin123
    sleep    3

*** Keywords ***
