from math import sqrt, floor

def is_(x):
    sqrt_x = floor(sqrt(x))
    div = 3
    if x in [2,3]:
        return True
    elif x == 1 or x % 2 == 0: 
        return False
    else:
        while div <= sqrt_x:
            if x % div == 0:
                return False
            else:
                div = div + 2
        return True

def next_(x):
    x_ = x + 1
    while is_(x_) is not True:
        x_ = x_ + 1
    return x_

def take(n):
    el = next_(0)
    res = [el]
    if n == 0:
        return []
    while len(res) < n:
        el = next_(el)
        res.append(el)
    return res

def nth(x):
    return take(x)[x-1]