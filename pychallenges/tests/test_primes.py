import unittest
from functions import primes

class TestPrimes(unittest.TestCase):

    def test_is_a_number_prime(self):
        self.assertTrue(primes.is_(2))
        self.assertTrue(primes.is_(3))
        self.assertTrue(primes.is_(11))  
        self.assertTrue(primes.is_(79))
        self.assertFalse(primes.is_(8))
        self.assertFalse(primes.is_(888))

    def test_get_next_prime(self):
        self.assertEqual(primes.next_(3),5)
        self.assertEqual(primes.next_(5),7)
        self.assertEqual(primes.next_(74),79)

    def test_get_nth_prime(self):
        self.assertEqual(primes.nth(6),13)
        self.assertEqual(primes.nth(10001),104743)

if __name__ == '__main__':
    unittest.main()