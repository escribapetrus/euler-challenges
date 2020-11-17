import unittest
from functions import multiples

class TestMultiples(unittest.TestCase):

    def test_multiples_of_a_or_b_below_n(self):
        self.assertEqual(multiples.of(3,5,10), [3,5,6,9])
        self.assertEqual(multiples.of(7,13,25), [7, 13, 14, 21])

    def test_sum_of_multiples_of_a_or_b_below_n(self):
        res_10 = sum(multiples.of(3,5,10))
        res_1000 = sum(multiples.of(3,5,1000))
        self.assertEqual(res_10, 23)
        self.assertEqual(res_1000, 233168)

if __name__ == '__main__':
    unittest.main()