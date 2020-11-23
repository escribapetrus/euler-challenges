def sum_squares(n):
    res = 0
    while n > 0:
        res = res + n**2
        n = n - 1
    return res

def square_sum(n):
    r = [x+1 for x in range(n)]
    res = sum(r)**2
    return res

def square_sum_difference(n):
    res = sum_squares(n) - square_sum(n)
    return abs(res)


#   def get(n), do: sum_squares(n) - square_sum(n) |> abs

#   def sum_squares(n) do
#     1..n
#     |> Stream.map(&(:math.pow(&1,2) |> round))
#     |> Enum.reduce(&(&1 + &2))
#   end

#   def square_sum(n) do
#     1..n
#     |> Enum.reduce(&(&1 + &2))
#     |> :math.pow(2)
#     |> round
#   end

# end
