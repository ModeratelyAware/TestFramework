*** Settings ***
Resource   ../../Resources/GuestHomePageResources.robot

*** Test Cases ***
Navigate to Home page
    Open Firefox
    Go To                 ${homeUrl}
    Location Should Be    ${homeUrl}
    Close Browser

Click Discover in navigation menu
    Open Firefox to homepage
    Click Discover
    Location Should Contain    expected=${discoverUrl}
    Close Browser

Click People in navigation menu
    Open Firefox to homepage
    Click People
    Location Should Contain    expected=${peopleUrl}
    Close Browser

Click Learning in navigation menu
    Open Firefox to homepage
    Click Learning
    Location Should Contain    expected=${learningUrl}
    Close Browser

Click Jobs in navigation menu
    Open Firefox to homepage
    Click Jobs
    Location Should Contain    expected=${jobsUrl}
    Close Browser