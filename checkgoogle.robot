*** Settings ***
Library                 SeleniumLibrary

*** Test Cases ***
I am open Google
    Open Browser        https://www.google.com/         chrome
    Maximize Browser Window
    Sleep               5s
    Close Browser