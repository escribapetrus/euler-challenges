import unittest
from functions import palindrome

class TestPalindrome(unittest.TestCase):

    def test_if_number_is_palindrome(self):
        self.assertTrue(palindrome.is_(1000001))
        self.assertTrue(palindrome.is_(18887778881))
        self.assertFalse(palindrome.is_(123567))
        self.assertFalse(palindrome.is_(111111110))

    def test_reverse_number(self):
        self.assertEqual(palindrome.reverse(123456),654321)
        self.assertEqual(palindrome.reverse(10001),10001)

    def test_get_largest_palindrome_product_of_n_digit_number(self):
        self.assertEqual(palindrome.largest_product(2), 9009)
        self.assertEqual(palindrome.largest_product(3), 906609)

if __name__ == '__main__':
    unittest.main()
