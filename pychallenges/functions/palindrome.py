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

def largest_product(n):
    min_ = 1 + 10**(n-1)
    max_ = 10**n
    products = [x*y for x in range(min_,max_) for y in range(min_,max_) if is_(x*y)] 
    reduced = reduce(lambda x,y: x if x >= y else y, products)
    return reduced

    # filtered = filter(lambda x: is_(x), product)
    # mapped = map(lambda x: x[0] * x[1], products)