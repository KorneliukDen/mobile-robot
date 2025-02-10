*** Settings ***
Documentation    Onboarding without geolocation permission and confirmation of the selected city
Resource    onboarding.resource
Suite Setup    common.Suite Setup
Suite Teardown    common.Suite Teardown
Test Setup    common.Launch App
Test Teardown    common.Close App


*** Test Cases ***
Diny Location And Confirm Town
    [Documentation]    Onboarding without geolocation permission and confirmation of the selected city
    onboarding.Deny Location
    onboarding.Confirm Town
