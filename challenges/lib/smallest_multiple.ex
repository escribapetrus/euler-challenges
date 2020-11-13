defmodule Challenges.SmallestMultiple do

  @moduledoc """
  2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

  R: 232792560
  """

  def get(n) do
    Stream.iterate(1,&(&1+1))
    |> get(n)
    |> Enum.take(1)
    |> Enum.at(0)
  end
  def get(x,1), do: x
  def get(x,n) do
    get(Stream.filter(x,&(rem(&1,n) == 0)), n-1)
  end

  # def get(x \\ 1) do
  #   cond do
  #     (divisible?(x)) -> x
  #     true -> get(x+1)
  #   end
  # end
  # def divisible?(n) do
  #   1..20
  #   |> Enum.all?(&(rem(n,&1) == 0))
  # end

end