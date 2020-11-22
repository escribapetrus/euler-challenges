import unittest
from functions import factor

class TestPrimeFactors(unittest.TestCase):

    def test_get_largest_prime_factor_by_successive_division(self):
        self.assertEqual(factor.max_prime(16),2)
        self.assertEqual(factor.max_prime(260),13)
        self.assertEqual(factor.max_prime(6636),79)


if __name__ == '__main__':
    unittest.main()