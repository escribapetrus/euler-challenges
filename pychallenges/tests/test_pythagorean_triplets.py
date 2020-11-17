import unittest
from functions import pythagorean_triplet

class TestPythagoreanTriplet(unittest.TestCase):

    def test_get_is_triplet_pythagorean(self):
        self.assertTrue(pythagorean_triplet.is_((3,4,5)))

    def test_get_pythagorean_triplet_from_values_m_n(self):
        triplet_1 = pythagorean_triplet.gen(5,2)
        triplet_2 = pythagorean_triplet.gen(13,6)
        self.assertTrue(pythagorean_triplet.is_(triplet_1))
        self.assertTrue(pythagorean_triplet.is_(triplet_2))

    def test_get_list_of_n_pythagorean_triplet(self):
        lis = pythagorean_triplet.gen_list(100)
        for l in lis:
            self.assertTrue(pythagorean_triplet.is_(l))
        
    def test_find_triplet_whose_sume_is_x(self):
        self.assertEqual(pythagorean_triplet.find(1000),(200,375,425))

    def test_multiplies_the_sides_of_a_triplet(self):
        self.assertSetEqual(pythagorean_triplet.product((200,375,425)),31875000)

if __name__ == '__main__':
    unittest.main()
