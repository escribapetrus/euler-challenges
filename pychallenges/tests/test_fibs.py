import unittest
from functions import fibs

class TestFibs(unittest.TestCase):

    def get_number_n_in_fibonacci_sequence(self):
        self.assertEqual(fibs.at(0), 0)
        self.assertEqual(fibs.at(1), 1)
        self.assertEqual(fibs.at(2), 1)
        self.assertEqual(fibs.at(12), 144)
        self.assertEqual(fibs.at(12), 377)

if __name__ == '__main__':
    unittest.main()
