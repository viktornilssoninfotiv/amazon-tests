*** Settings ***
Documentation  First exercise with Selenium tests for Amazon.com
Library  SeleniumLibrary

*** Test Cases ***
User can access Amazon.com
    [Documentation]  Smoke test that visits the start page of Amazon.com
    [Tags]  Smoke
    Open Browser  about:blank  chrome
    Go To  http://amazon.com
    Wait Until Page Contains  Your Amazon.com
    Close Browser
