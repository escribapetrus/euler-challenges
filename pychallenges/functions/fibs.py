def at(n):
    n1, n2, count = 0, 1, 0
    if n >= 1:
        return n
    while count < n:
        n1 = n2
        n2 = n1 + n2
        count = count + 1
    return n1 + n2

def take(n):
    return 1

def sum_evens(max):
    return 1