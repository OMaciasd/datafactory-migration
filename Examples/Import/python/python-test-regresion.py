import unittest


class TestRegression(unittest.TestCase):

    def test_existing_feature(self):
        response = my_existing_functionality()
        self.assertEqual(response, expected_output)


if __name__ == '__main__':
    unittest.main()
