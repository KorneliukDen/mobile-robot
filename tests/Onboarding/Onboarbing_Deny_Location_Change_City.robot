*** Settings ***
Documentation    Onboarding without geolocation permission and changing city
Resource    onboarding.resource
Suite Setup    common.Suite Setup
Suite Teardown    common.Suite Teardown
Test Setup    common.Launch App
Test Teardown    common.Close App


*** Test Cases ***
Deny Location And Change Town
    [Documentation]    Onboarding without geolocation permission and changing city
    onboarding.Deny Location
    onboarding.Change Town
