*** Settings ***
Documentation  First exercise with Selenium tests for Amazon.com
Library  SeleniumLibrary
Resource  ../Resources/keywords.robot
Suite Setup  Begin Web Test
Suite Teardown  End Web Test

*** Test Cases ***
User can access Amazon.com
    [Documentation]  Smoke test that visits the start page of Amazon.com
    [Tags]  Smoke
    Go To Web Page

User can conduct a search
    [Documentation]  Smoke test that searches for a product
    [Tags]  Smoke
    Go To Web Page
    Search for Product ${SEARCH_TERM}

Argument test
    Go To Web Page
    Search for Product Tesla Model X

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://amazon.com
${SEARCH_TERM} =  ferrari 458
