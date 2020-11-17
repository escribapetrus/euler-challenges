import unittest
from functions import fibs

class TestFibs(unittest.TestCase):

    def test_get_number_n_in_fibonacci_sequence(self):
        self.assertEqual(fibs.at(0), 0)
        self.assertEqual(fibs.at(1), 1)
        self.assertEqual(fibs.at(2), 1)
        self.assertEqual(fibs.at(12), 144)
        self.assertEqual(fibs.at(15), 610)
    
    def test_get_fibonacci_sequence_up_to_nth_element(self):
        self.assertEqual(fibs.take(10), [1,1,2,3,5,8,13,21,34,55])

    def test_get_sum_of_even_fibs_below_x(self):
        self.assertEqual(fibs.sum_evens(55), 2+8+34)
        self.assertEqual(fibs.sum_evens(4000000), 4613732)

if __name__ == '__main__':
    unittest.main()
