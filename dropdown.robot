*** Settings ***
Library                         SeleniumLibrary
Suite Setup                      Open Browser            ${base_url}         ${browser_type}
Suite Teardown                   Close Browser

*** Variables ***
${base_url}                     http://the-internet.herokuapp.com/dropdown
${browser_type}                 chrome

*** Test Cases ***
I am using dropdown select 2 
    Maximize Browser Window
    Element Should Be Visible   //select[@id="dropdown"]
    Select From List By Index   //select[@id="dropdown"]                                2
    List Selection Should Be    //select[@id="dropdown"]                                Option 2
    Sleep                       5s

I am using dropdown select 1
    Element Should Be Visible   //select[@id="dropdown"]
    Select From List By Index   //select[@id="dropdown"]                                1
    List Selection Should Be    //select[@id="dropdown"]                                Option 1
    Sleep                       5s
