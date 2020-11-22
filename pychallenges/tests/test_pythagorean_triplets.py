import unittest
from functions import pythagorean_triplets

class TestPythagoreanTriplet(unittest.TestCase):

    def test_get_is_triplet_pythagorean(self):
        triplet = (3,4,5)
        self.assertTrue(pythagorean_triplets.is_(triplet))

    def test_get_pythagorean_triplets_from_values_m_n(self):
        triplet_1 = pythagorean_triplets.gen(5,2)
        triplet_2 = pythagorean_triplets.gen(13,6)
        self.assertTrue(pythagorean_triplets.is_(triplet_1))
        self.assertTrue(pythagorean_triplets.is_(triplet_2))

    def test_get_list_of_n_pythagorean_triplets(self):
        lis = pythagorean_triplets.gen_list(50)
        for l in lis:
            self.assertTrue(pythagorean_triplets.is_(l))
        
    def test_find_triplet_whose_sume_is_x(self):
        self.assertEqual(pythagorean_triplets.find(1000),(200,375,425))

    def test_multiplies_the_sides_of_a_triplet(self):
        self.assertEqual(pythagorean_triplets.product((200,375,425)),31875000)

if __name__ == '__main__':
    unittest.main()
