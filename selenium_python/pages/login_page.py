from selenium.webdriver.remote.webdriver import WebDriver
from selenium_python.locators.login_page_locators import LoginPageLocators
from selenium_python.pages.base_page import BasePage


class LoginPage(BasePage):
    def __init__(self, driver: WebDriver, url, locators: LoginPageLocators):
        super().__init__(driver, url)
        self.locators = locators

    def click_sign_in(self):
        self.click(self.locators.SIGNIN_BUTTON)

    def enter_username(self):
        self.enter_data_in_field(self.locators.USERNAME_FIELD, "username")

    def enter_password(self):
        self.enter_data_in_field(self.locators.PASSWORD_FIELD, "password")

    def show_password(self):
        self.click(self.locators.SHOW_PASSWORD_BUTTON)

    def is_password_visible(self):
        return self.check_attribute_in_element_for_value(
            self.locators.PASSWORD_FIELD,
            self.locators.PASSWORD_FIELD_TYPE,
            self.locators.PASSWORD_FIELD_TYPE_TEXT,
        )
