defmodule Challenges.LargestPalindrome do

 def get do
  lis = for x <- 111..999, y <- 111..999, do: x * y
  get_biggest_palindrome(lis)
 end

  def get_biggest_palindrome(lis) do
    lis
    |> Enum.filter(&(palindrome?(&1)))
    |> Enum.reduce(fn x,y -> if x > y do x else y end end)
  end

  def palindrome?(x), do: x == reverse(x)

  def reverse(ori, new \\ 0) do
    last = rem(ori,10)
    first = div(ori, 10)
    cond do
      (first == 0) -> new * 10 + ori
      true -> reverse(first, (new * 10) + last)
    end
  end

end
