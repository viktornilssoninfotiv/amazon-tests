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
    ${link_text} =  Get Text  id:nav-your-amazon
    Should Be Equal  ${link_text}  Your Amazon.com

Search for Product ${search_term}
    Enter Search Term  ${search_term}
    Submit Search
    Verify Search for ${search_term} Completed

Enter Search Term
    [Arguments]  ${search_term}
    Input Text  id:twotabsearchtextbox  ${search_term}

Submit Search
    Click Button  //*[@id="nav-search"]/form/div[2]/div/input

Verify Search for ${search_term} Completed
    Wait Until Page Contains  results for "${search_term}"

End Web Test
    Close Browser