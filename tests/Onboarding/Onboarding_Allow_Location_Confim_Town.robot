*** Settings ***
Documentation     Onboarding with geolocation permission and confirmation of the selected city
Resource    onboarding.resource
Suite Setup    common.Suite Setup
Suite Teardown    common.Suite Teardown
Test Setup    common.Launch App
Test Teardown    common.Close App


*** Test Cases ***
Allow Location And Confirm Town
    [Documentation]    Onboarding with geolocation permission and confirmation of the selected city
    onboarding.Allow Location
    onboarding.Confirm Town
    onboarding.Foreground
