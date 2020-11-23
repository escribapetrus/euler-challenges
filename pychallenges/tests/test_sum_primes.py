import unittest
from functions import primes

class TestPrimes(unittest.TestCase):

    def test_get_primes_below_max(self):
        self.assertEqual(primes.below(10), [2,3,5,7])


    def test_get_sum_of_primes_below_max(self):
        self.assertEqual(primes.sum_below(10), 17)
        self.assertEqual(primes.sum_below(2000000), 142913828922)


if __name__ == '__main__':
    unittest.main()