def at(n):
    if n <= 0:
        return 0
    else:
        n1,n2 = 0,1
        for i in range(1,n):
            n1,n2 = n2, n1+n2
        return n2

def take(n):
    return [at(x + 1) for x in range(n)]

def sum_evens(limit):
    counter = 1
    current = at(counter)
    res = 0
    while (current < limit):
        if current % 2 == 0:
            res = res + current
        counter += 1
        current = at(counter)
    return res