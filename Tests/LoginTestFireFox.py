import unittest

from selenium import webdriver

from SeleniumPython.Pages.LoginPage import LoginPage
from SeleniumPython.Locators.LoginPageLocators import LoginPageLocators


class LoginPageTestsFireFox(unittest.TestCase):

    def setUp(self):
        self.locators = LoginPageLocators()
        self.driver = webdriver.Firefox()
        self.url = "https://linkedin.com/login"
        self.page = LoginPage(self.driver, self.url, self.locators)

    def test_login(self):
        driver = self.driver
        page = self.page

        page.load()
        assert "Login" in driver.title
        page.enter_username()
        page.enter_password()
        page.click_sign_in()
        assert not "Login" in driver.title

    def test_show_password(self):
        page = self.page

        page.load()
        page.enter_password()
        assert not page.is_password_visible()
        page.show_password()
        assert page.is_password_visible()


    def tearDown(self):
        self.driver.quit()


