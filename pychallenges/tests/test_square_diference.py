import unittest
from functions import naturals

class TestSumSquareDifference(unittest.TestCase):

    def test_get_sum_of_squares_of_n_natural_numbers(self):
        self.assertEqual(naturals.sum_squares(10), 385)
        self.assertEqual(naturals.sum_squares(100), 338350)

    def test_get_square_of_sum_of_n_natural_numbers(self):
        self.assertEqual(naturals.square_sum(10),3025)
        self.assertEqual(naturals.square_sum(100),25502500)
    
    def test_get_absolute_difference_between_square_of_sum_and_sum_of_squares(self):
        self.assertEqual(naturals.square_sum_difference(10),2640)
        self.assertEqual(naturals.square_sum_difference(100),25164150)

if __name__ == '__main__':
    unittest.main()