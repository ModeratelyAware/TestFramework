*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${homeUrl}         https://www.linkedin.com/
${discoverUrl}     ${homeUrl}pulse/
${peopleUrl}       ${homeUrl}pub/
${learningUrl}     ${homeUrl}learning/
${jobsUrl}         ${homeUrl}jobs/

${topnavmenu}  .top-nav-menu
${discover}    ${topnavmenu} > li:nth-child(1) > a:nth-child(1)
${people}      ${topnavmenu} > li:nth-child(2) > a:nth-child(1)
${learning}    ${topnavmenu} > li:nth-child(3) > a:nth-child(1)
${jobs}        ${topnavmenu} > li:nth-child(4) > a:nth-child(1)


*** Keywords ***
Open Firefox
    Open Browser    browser=Firefox

Open Firefox to homepage
    Open Browser    browser=Firefox    url=${homeUrl}

Click Discover
    Click Element    css:${discover}

Click People
    Click Element    css:${people}

Click Learning
    Click Element    css:${learning}

Click Jobs
    Click Element    css:${jobs}