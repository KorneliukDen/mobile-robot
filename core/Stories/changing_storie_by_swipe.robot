*** Settings ***
Documentation    moving from one storie to another with a swipe and add to favorites
Resource    stories.resource
Suite Setup    common.Suite Setup
Suite Teardown    common.Suite Teardown
Test Setup    common.Lauch App With Geo
Test Teardown    common.Close App


*** Test Cases ***
Add Stories To Favorite
    [Documentation]    move from one storie to another with a swipe and add to favorites
    Transition From One Stories To Another With A Swipe
    Add To Favorite
