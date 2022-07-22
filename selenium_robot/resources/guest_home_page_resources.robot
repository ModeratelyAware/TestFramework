*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${home_url}         https://www.linkedin.com/
${discover_url}     ${home_url}pulse/
${people_url}       ${home_url}pub/
${learning_url}     ${home_url}learning/
${jobs_url}         ${home_url}jobs/

${top_nav_menu}  .top-nav-menu
${discover}    ${top_nav_menu} > li:nth-child(1) > a:nth-child(1)
${people}      ${top_nav_menu} > li:nth-child(2) > a:nth-child(1)
${learning}    ${top_nav_menu} > li:nth-child(3) > a:nth-child(1)
${jobs}        ${top_nav_menu} > li:nth-child(4) > a:nth-child(1)

${BROWSER}       ${browser_name}
${BROWSER_NAME}  ${browser_name}
${PLATFORM}      ${platform}
${VERSION}       ${version}

${SAUCE_USERNAME}    %{SAUCE_USERNAME}
${SAUCE_ACCESS_KEY}  %{SAUCE_ACCESS_KEY}

${REMOTE_URL}        https://${SAUCE_USERNAME}:${SAUCE_ACCESS_KEY}@ondemand.us-west-1.saucelabs.com:443/wd/hub

${DESIRED_CAPABILITIES}
    ...  name:${BROWSER},
    ...  platform:${PLATFORM},
    ...  browsername:${BROWSER_NAME},
    ...  version:${VERSION}

# Command: pabot -d selenium_robot/output -A selenium_robot/chrome_config.txt seleniumrobot/tests

*** Keywords ***
Open Home Page
    Open Browser
    ...  browser=Chrome
    ...  url=${home_url}
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${DESIRED_CAPABILITIES}

Click Discover
    Click Element  css:${discover}

Click People
    Click Element  css:${people}

Click Learning
    Click Element  css:${learning}

Click Jobs
    Click Element  css:${jobs}
