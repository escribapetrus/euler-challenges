defmodule Challenges.SmallestMultiple do

  @moduledoc """
  2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
  """

  def get(n) do
    Stream.iterate(n,&(&1+n))
    |> get(n)
    |> Enum.take(1)
    |> Enum.at(0)
  end
  def get(x,1), do: x
  def get(x,n) do
    get(Stream.filter(x,&(rem(&1,n) == 0)), n-1)
  end

end
