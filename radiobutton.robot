*** Settings ***
Library                         SeleniumLibrary
#Test Setup                      Open Browser            ${base_url}         ${browser_type}
#Test Teardown                   Close Browser

*** Variables ***
${base_url}                     https://demoqa.com/radio-button
${browser_type}                 chrome

*** Test Cases ***
Opening browser
    Open Browser                ${base_url}                             ${browser_type}
    Maximize Browser Window

I am using Yes radio button    
    Click Element               //label[@for="yesRadio"]
    Element Should Be Visible   //p[@class="mt-3"]
    Element Should Contain      //span[@class="text-success"]              Yes
    Sleep                       5s

I am using Impressive radio button
    Click Element               //label[@for="impressiveRadio"]
    Element Should Be Visible   //p[@class="mt-3"]
    Element Should Contain      //span[@class="text-success"]              Impressive
    Sleep                       5s

Closing browser
    Close Browser