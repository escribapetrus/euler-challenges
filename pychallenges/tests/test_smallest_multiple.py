import unittest
from functions import smallest_multiple

class TestPrimeFactors(unittest.TestCase):

    def test_get_smallest_number_divisible_by_all_integers_1_to_n(self):
        self.assertEqual(smallest_multiple.get(10),2520)
        self.assertEqual(smallest_multiple.get(20),232792560)

if __name__ == '__main__':
    unittest.main()
