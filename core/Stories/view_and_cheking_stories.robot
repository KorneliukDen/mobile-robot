*** Settings ***
Documentation
...        view stories, check the "viewed" mark and make sure that after viewing it will move to the end of the list
Resource    stories.resource
Suite Setup    common.Suite Setup
Suite Teardown    common.Suite Teardown
Test Setup    common.Lauch App With Geo
Test Teardown    common.Close App


*** Test Cases ***
Introduction Tap With Position
    [Documentation]    switch slides in stories by tapping left and right
    Switch Slide By Tap    "right"
    Switch Slide By Tap    "left"

Check That Viewed Story
    [Documentation]    Checking the viewed stories mark "viewed" and location
    Looking For Button View Collection
    Check That Stories Has Been Viewed
    The Viewed Stories Is Located At The End Of The Story Feed
