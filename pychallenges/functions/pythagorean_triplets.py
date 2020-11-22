def is_(triplet):
    a,b,c = triplet
    res = (a**2) + (b**2) == c**2
    return res 

def gen(m,n):
    a = 2 * m * n
    b = (m ** 2) - (n ** 2)
    c = (m ** 2) + (n ** 2)
    return (a,b,c)

def gen_list(n):
    r = range(1,n+1)
    lis = [gen(x,y) for x in r for y in r if x > y]
    return lis

def find(sum_sides, n = 100):
    lis = filter(lambda x: x[0] + x[1] + x[2] == sum_sides, gen_list(n))
    return list(lis)[0]

def product(triplet):
    a,b,c = triplet
    return a * b * c

