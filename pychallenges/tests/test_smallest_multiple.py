import unittest
from functions import multiples

class TestPrimeFactors(unittest.TestCase):

    def test_get_smallest_number_divisible_by_all_integers_1_to_n(self):
        # self.assertTrue(multiples.of_all(10))
        self.assertEqual(multiples.of_all(10),2520)
        self.assertEqual(multiples.of_all(20),232792560)

if __name__ == '__main__':
    unittest.main()
