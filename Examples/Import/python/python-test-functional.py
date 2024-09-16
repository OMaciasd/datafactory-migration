from selenium import webdriver
import unittest


class TestFunctional(unittest.TestCase):

    def setUp(self):
        self.driver = webdriver.Chrome()

    def test_login(self):
        driver = self.driver
        driver.get("https://example.com/login")
        driver.find_element_by_id("username").send_keys("user")
        driver.find_element_by_id("password").send_keys("pass")
        driver.find_element_by_id("submit").click()
        self.assertIn("Welcome", driver.page_source)

    def tearDown(self):
        self.driver.quit()


if __name__ == "__main__":
    unittest.main()
