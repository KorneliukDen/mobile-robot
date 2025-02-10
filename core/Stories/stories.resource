*** Settings ***
Documentation    keywords for onboarding
Resource    ../../tests/common.resource


*** Keywords ***
Looking For Button View Collection
    [Documentation]    Looking for button "Смотреть подборку"

    Wait Until Element Is Visible    ${STORY_IMAGE}
    ${elements}=    Get WebElements    ${XPATH_STORY_IMAGE}
    Click Element    ${elements}[2]

    WHILE    True
        Wait Until Element Is Visible    ${FRAG_STORIES}
        ${is_element_present}=    Run Keyword And Return Status
        ...    Wait Until Element Is Visible    ${STORIES_TITLE_BTN}    timeout=1s

        IF    ${is_element_present}    BREAK

        Switch Slide By Tap    "right"
    END

    Page Should Contain Element    ${STORIES_TITLE_BTN}

Switch Slide By Tap
    [Documentation]    Switching stories slide by tap
    ...    arguments: side - taping side (left or right)
    [Arguments]    ${side}
    ${width}=    Get Window Width
    ${height}=    Get Window Height
    IF    ${side} == "right"
        ${x}=    Evaluate    ${width} * 0.8
    ELSE IF    ${side} == "left"
        ${x}=    Evaluate    ${width} * 0.2
    END

    ${y}=    Evaluate     ${height} * 0.5

    ${tap_position}=    Create List    ${x}    ${y}

    Tap With Positions    100    ${tap_position}

Check That Stories Has Been Viewed
    [Documentation]    checking the "viewed" mark
    Wait Until Page Contains Element    ${CLOSE_STORIES}
    Click Element    ${CLOSE_STORIES}

    Wait Until Element Is Visible    ${STORY_IMAGE}
    Page Should Contain Element    ${VIEWED_MARK}

    ${stories_name}=    Get Element Attribute    ${STORY_TITLE}    attribute=text

    Terminate Application    ${APP_PACKAGE}
    Activate Application    ${APP_PACKAGE}

    Wait Until Page Contains Element    ${STORY_IMAGE}
    Page Should Not Contain Element    ${VIEWED_MARK}
    Page Should Not Contain Element    ${stories_name}

The Viewed Stories Is Located At The End Of The Story Feed
    [Documentation]    checking the location of stories
    Wait Until Element Is Visible    ${STORY_IMAGE}

    WHILE    True
        ${is_element_present}=    Run Keyword And Return Status
        ...    Wait Until Element Is Visible    ${VIEWED_MARK}    timeout=1s

        IF    ${is_element_present}    BREAK

        Swipe By Percent    90    15    15    15    300
    END
    Page Should Contain Element    ${VIEWED_MARK}

View Photo Stories To The End
    [Documentation]    viewing all srtories photos
    Wait Until Element Is Visible    ${STORY_IMAGE}
    ${elements}=    Get WebElements    ${XPATH_STORY_IMAGE}
    Click Element    ${elements}[3]

    Wait Until Element Is Visible    ${FRAG_STORIES}

    WHILE    True
        ${is_element_present}=    Run Keyword And Return Status
        ...    Wait Until Element Is Visible    ${STORIES_TITLE_BTN}    timeout=0.5s

        IF    ${is_element_present}    BREAK

        Switch Slide By Tap    "right"
    END
    Page Should Contain Element    ${STORIES_TITLE_BTN}
    Wait Until Element Is Visible    ${STORIES_TITLE_BTN}

Swiping The Photo Stories In The Other Direction
    [Documentation]    swipe photo in other direction and push "details" button
    Switch Slide By Tap    "left"
    ${counter}=    Set Variable    0

    WHILE    True
        ${is_element_present}=    Run Keyword And Return Status
        ...        Wait Until Element Is Visible    ${STORIES_SECONDARY_BTN}

        IF    ${is_element_present}
            ${counter}=    Evaluate    ${counter} + 1
            IF    ${counter} == 3    BREAK

            Switch Slide By Tap    "left"
        END
    END
    Wait Until Element Is Visible    ${STORIES_SECONDARY_BTN}
    Click Element    ${STORIES_SECONDARY_BTN}

Sharing The Photo
    [Documentation]    sharing photo
    Wait Until Element Is Visible    ${SHARE_BTN}
    Click Element    ${SHARE_BTN}

    Wait Until Element Is Visible    ${SHARE_PANEL}
    Sleep    3s
    Click Element    ${CANCEL_BTN}

Transition From One Stories To Another With A Swipe
    [Documentation]    move from one storie to another with a swipe and add to favorites

    Wait Until Element Is Visible    ${STORY_IMAGE}
    ${elements}=    Get WebElements    ${XPATH_STORY_IMAGE}
    Click Element    ${elements}[1]

    Wait Until Element Is Visible    ${FRAG_STORIES}

    Swipe By Percent    50    20    50    80    500

    ${is_element_present}=    Set Variable    ${False}

    FOR    ${_}    IN RANGE    10
        Wait Until Element Is Visible    ${FRAG_STORIES}
        ${is_element_present}=    Run Keyword And Return Status
        ...        Wait Until Element Is Visible    ${STORIES_SECONDARY_BTN}    timeout=0.5s
        IF    ${is_element_present}
            BREAK
        ELSE
            Switch Slide By Tap    "right"
        END

    END

Add To Favorite
    [Documentation]    Adding Stories to Favorites
    Page Should Contain Element    ${STORIES_SECONDARY_BTN}
    Click Element    ${STORIES_SECONDARY_BTN}

    Wait Until Element Is Visible    ${LIKE_BTN}
    Click Element    ${LIKE_BTN}
    Page Should Contain Element    ${AUTH_SECTION}

Looking For A Movie
    [Documentation]    searching for a movie and a seat place

    Wait Until Element Is Visible    ${STORY_IMAGE}
    Click Element    ${STORY_IMAGE}

    Wait Until Element Is Visible    ${FRAG_STORIES}

    WHILE    True
        ${is_element_present}=    Run Keyword And Return Status
        ...    Wait Until Element Is Visible    ${STORIES_PRIMATY_BTN}    timeout=0.5s

        IF    ${is_element_present}    BREAK

        Switch Slide By Tap    "right"
    END
    Page Should Contain Element    ${STORIES_PRIMATY_BTN}
    Wait Until Element Is Visible    ${STORIES_PRIMATY_BTN}

Seat Place Map View
    [Documentation]    choosing a seat in the cinema hall
    Click Element    ${STORIES_PRIMATY_BTN}

    Wait Until Element Is Visible   ${SMALL_MOVIE_CARD}
    Click Element    ${SMALL_MOVIE_CARD}

    Wait Until Element Is Visible    ${SEAT_PACES_MAP}
