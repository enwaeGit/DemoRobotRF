*** Settings ***
Library                         SeleniumLibrary
#Test Setup                      Open Browser            ${base_url}         ${browser_type}
#Test Teardown                   Close Browser

*** Variables ***
${base_url}                     https://demoqa.com/checkbox
${browser_type}                 chrome

*** Test Cases ***
Opening browser
    Open Browser                ${base_url}                                             ${browser_type}
    Maximize Browser Window

I am using checkbox    
    Click Element               (//button[@class="rct-collapse rct-collapse-btn"])[1]
    Click Element               (//button[@class="rct-collapse rct-collapse-btn"])[2]
    Click Element               //label[@for="tree-node-notes"]
    Element Should Be Visible   //div[@id="result"]
    Element Should Contain      //span[@class="text-success"]                           notes
    Sleep                       5s

# I am using Impressive radio button
#     Click Element               //label[@for="impressiveRadio"]
#     Element Should Be Visible   //p[@class="mt-3"]
#     Element Should Contain      //span[@class="text-success"]              Impressive
#     Sleep                       5s

Closing browser
    Close Browser