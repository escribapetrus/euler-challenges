defmodule Challenges.LargestPrimeFactor do
  @moduledoc """
  The prime factors of 13195 are 5, 7, 13 and 29.
  What is the largest prime factor of the number 600851475143 ?
  """

  def get(x), do: get(x,2)

  def get(1,div), do: div
  def get(x, 2) do
    cond do
      (rem(x, 2) == 0) -> get(div(x,2),2)
      true -> get(x, 2 + 1)
    end
  end
  def get(x,div) do
    cond do
      (rem(x,div) == 0) -> get(div(x,div),div)
      true -> get(x, div + 1)
    end
  end

end
