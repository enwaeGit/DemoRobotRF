*** Settings ***
Library                 SeleniumLibrary
Test Setup              Open Browser            ${base_url}         ${browser_type}
Test Teardown           Close Browser

*** Variables ***
${base_url}             https://www.google.com/
${browser_type}         chrome

*** Test Cases ***
I am open Google
    Maximize Browser Window
    Sleep               5s