def max_prime(x):
    div = 2
    while x > 1: 
        if x % div == 0:
            x = x / div
        else:
            div = div + 1
    return div
