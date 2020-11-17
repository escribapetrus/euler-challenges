import unittest
from functions import prime_factors

class TestPrimeFactors(unittest.TestCase):

    def test_get_largest_prime_factor_by_successive_division(self):
        self.assertEqual(prime_factors.max(16),2)
        self.assertEqual(prime_factors.max(260),13)
        self.assertEqual(prime_factors.max(6636),79)


if __name__ == '__main__':
    unittest.main()