import unittest


class TestAcceptance(unittest.TestCase):

    def test_user_login(self):
        response = simulate_user_login('user', 'password')
        self.assertTrue(response['success'])
        self.assertEqual(response['welcome_message'], 'Welcome, user!')


if __name__ == '__main__':
    unittest.main()
