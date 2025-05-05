*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  Chrome
${url}  https://www.globalsqa.com/demo-site/select-dropdown-menu/

*** Test Cases ***
Handlingdropdowns and lists
    open browser    ${url}     ${browser}
    maximize browser window
    select from list by label    //*[@id="post-2646"]/div[2]/div/div/div/p/select   Angola
    sleep  3
    select from list by index    //*[@id="post-2646"]/div[2]/div/div/div/p/select   11
    sleep   3
    #select from list by value
    #for list box
    select from list by label   selenium_commands   WebElement commands
