from selenium.webdriver.common.by import By
from selenium.webdriver.remote.webdriver import WebDriver


def find_element_by_css_selector(driver: WebDriver, element):
    return driver.find_element(By.CSS_SELECTOR, element)


def is_element_existing_in_page(driver: WebDriver, element):
    elements = driver.find_elements(By.CSS_SELECTOR, element)
    return elements.__sizeof__() > 0


class BasePage(object):
    def __init__(self, driver: WebDriver, url):
        self.driver: WebDriver = driver
        self.url = url

    def load(self):
        self.driver.get(self.url)

    def quit(self):
        self.driver.quit()

    def is_text_in_title(self, text):
        return text in self.driver.title

    def check_attribute_in_element_for_value(self, element, attribute, value):
        element = find_element_by_css_selector(self.driver, element)
        attribute = element.get_attribute(attribute)
        return attribute == value

    def is_element_found(self, element):
        return is_element_existing_in_page(self.driver, element)

    def click(self, element):
        element = find_element_by_css_selector(self.driver, element)
        element.click()

    def enter_data_in_field(self, element, data):
        element = find_element_by_css_selector(self.driver, element)
        element.send_keys(data)


