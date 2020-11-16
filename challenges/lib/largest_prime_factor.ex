defmodule Challenges.LargestPrimeFactor do

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

  # def prime?(x), do: prime?(x,2)
  # def prime?(1,_), do: true
  # def prime?(x, div) do
  #   cond do
  #     (x == div) -> true
  #     (rem(x,div) == 0) -> false
  #     true -> prime?(x, div + 1)
  #   end
  # end

end
