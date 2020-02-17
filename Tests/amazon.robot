*** Settings ***
Documentation  First exercise with Selenium tests for Amazon.com
Library  SeleniumLibrary
Suite Setup  Begin Web Test
Suite Teardown  End Web Test

*** Test Cases ***
User can access Amazon.com and conduct a search
    [Documentation]  Smoke test that visits the start page of Amazon.com
    [Tags]  Smoke
    Go To Web Page

User can conduct a search
    [Documentation]  Smoke test that searches for a product
    [Tags]  Smoke
    Go To Web Page
    Search for Product

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

Go To Web Page
    Load Page
    Verify Page Loaded

Load Page
    Go To  ${URL}

Verify Page Loaded
    Wait Until Page Contains  Your Amazon.com

Search for Product
    Enter Search Term
    Submit Search
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Enter Search Term
    Input Text  id:twotabsearchtextbox  ${SEARCH_TERM}

Submit Search
    Click Button  //*[@id="nav-search"]/form/div[2]/div/input

Verify Seach Completed
    Wait Until Page Contains  results for "ferrari 458"

End Web Test
    Close Browser

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://amazon.com
${SEARCH_TERM} =  ferrari 458
