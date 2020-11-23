from functools import reduce

def of(a,b, n):
    lis = lis = [x for x in range(2,n) if (x % a == 0) or (x % b == 0)] 
    return lis

def of_all(n):
    r = [x + 1 for x in range(n)]
    res = 0
    res_found = False
    check = lambda x,lis: all(x % y == 0 for y in lis) 
    while res_found is not True:
        res = res + n
        if check(res,r):
            res_found = True

    return res