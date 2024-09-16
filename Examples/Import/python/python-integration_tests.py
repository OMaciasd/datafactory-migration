import unittest
import requests


class TestAPIIntegration(unittest.TestCase):

    def test_api_response(self):
        response = requests.get('https://api.example.com/data', timeout=10)
        self.assertEqual(response.status_code, 200)
        self.assertIn('data', response.json())


if __name__ == '__main__':
    unittest.main()
