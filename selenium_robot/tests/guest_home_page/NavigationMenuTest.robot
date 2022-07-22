*** Settings ***
Resource   ../../Resources/guest_home_page_resources.robot

*** Test Cases ***
Click Discover in navigation menu
    Open Home Page
    Click Discover
    Location Should Contain    expected=${discover_url}
    Close Browser

Click People in navigation menu
    Open Home Page
    Click People
    Location Should Contain    expected=${people_url}
    Close Browser

Click Learning in navigation menu
    Open Home Page
    Click Learning
    Location Should Contain    expected=${learning_url}
    Close Browser

Click Jobs in navigation menu
    Open Home Page
    Click Jobs
    Location Should Contain    expected=${jobs_url}
    Close Browser