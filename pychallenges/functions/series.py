def slice_product(series, n):
    res = 1
    if n == 0:
        return 1
    while n > 0:
        res = res * (series % 10)
        series = series // 10
        n = n - 1
    return res

def largest_product(series, n):
    product = slice_product(series,n)
    res = 1
    if n == 0:
        return 1
    while series > 0:
        if product > res:       
            res = product
        series = series // 10
        product = slice_product(series,n)
    return res

#   def get(num,len, res \\ 0) do
#     product = slice_product(num,len)

#     cond do
#       (num == 0) -> res
#       (product >= res) -> get(div(num,10), len, product)
#       (res > product) -> get(div(num,10), len, res)
#     end
#   end