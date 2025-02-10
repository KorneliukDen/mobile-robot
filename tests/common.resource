*** Settings ***
Documentation    common settings
Resource    ../core/all.resource
Resource    Onboarding/onboarding.resource


*** Keywords ***
Launch App
    [Documentation]    opening app
    launcher.Open App

Lauch App With Geo
    [Documentation]    launch app with geo
    Launch App
    onboarding.Allow Location And Confirm Town

Close App
    [Documentation]    closing app
    Close Application

Suite Setup
    [Documentation]    action before launching the test suite
    Set Appium Timeout    20s

Suite Teardown
    [Documentation]    action after completion of test suite
    Pass Execution    message="test complited"
