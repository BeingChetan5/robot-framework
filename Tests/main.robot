*** Settings ***
Documentation      Simple Robot file (Suite)
Library            SeleniumLibrary

*** Variables ***
${url}    http://www.thetestingworld.com/
${browser}    Chrome

*** Test Cases ***
TC_001_
    [Tags]                                       sanity    100
    [Documentation]                              Test case to open chrome browser
    open browser                                 ${url}    ${browser}
    Maximize Browser Window
    page should contain                       ABOUT US
    log to console        "verified"
    click element        xpath=//span[text()='TUTORIAL ']
     page should contain    Testing World, being a reputed software testing training institute in Noida