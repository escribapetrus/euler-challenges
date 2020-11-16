defmodule Challenges.LargestPalindromeProduct do
  @moduledoc """
  A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
  Find the largest palindrome made from the product of two 3-digit numbers.
  """

  def get(lis) do
    lis = for x <- lis, y <- lis, do: x * y
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
