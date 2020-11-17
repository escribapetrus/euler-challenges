from itertools import product
from functools import reduce

def reverse(num):
    reverse = 0
    while (num > 0):
        reverse = (reverse * 10) + (num % 10)
        num = num // 10
    return reverse

def is_(x):
    if x == reverse(x):
        return True
    else:
        return False

def largest_product():
    products = [[x*y] for x in range(11,100) if is_(x*y) for y in range(11,100)] 
    reduced = reduce(lambda x,y: x if x >= y else y, filtered)
    return reduced

    # filtered = filter(lambda x: is_(x), product)
    # mapped = map(lambda x: x[0] * x[1], products)