*** Settings ***
Library                         SeleniumLibrary
Test Setup                      Open Browser            ${base_url}         ${browser_type}
Test Teardown                   Close Browser

*** Variables ***
${base_url}                     http://uitestingplayground.com/textinput
${browser_type}                 chrome

*** Test Cases ***
I am type name
    Maximize Browser Window
    Input Text                  locator=//input[@id="newButtonName"]        text=Andi
    Click Button                //button[@id="updatingButton"]
    Element Should Contain      //button[@id="updatingButton"]              Andi
    Sleep                       5s