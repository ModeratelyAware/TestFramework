# TestFramework
Small project using Python, Selenium, Robot Framework, and Sauce Labs to familiarize myself more with test automation, the page object model, and css selectors. I had no prior knowledge of any of these before diving in but it was not very difficult to grasp.

### Selenium Python
For Selenium Python, my goal was to setup a very basic representation of the page object model and to run automated tests using unittest. The tests are run with a locally specified driver.

### Selenium Robot
For Selenium Robot, my goal was to push automated tests using the SeleniumLibrary to Sauce Labs. This was accomplished by storing system variables of my Sauce Labs credentials, using Robot to access them, and running a command with a config.txt parameter to specify the desired test environment on Sauce Labs.

#### Usage
`pabot -d selenium_robot/output -A selenium_robot/chrome_config.txt selenium_robot/tests`

Pabot is used for simultaneous execution of tests.

The chrome_config.txt file is used to define the browser, platform (OS), and version on Sauce Labs. Multiple config files can be created to specify different test environments and further automated using batch files.
