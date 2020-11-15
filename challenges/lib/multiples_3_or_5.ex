defmodule Challenges.Multiples3or5 do
  @moduledoc """
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
  The sum of these multiples is 23.
  Find the sum of all the multiples of 3 or 5 below 1000.
  """
  def sum(x) do
    sum(x-1,0)
  end

  defp sum(0,res), do: res
  defp sum(x, res) do
    condition = rem(x,3) == 0 || rem(x,5) == 0
    if (condition) do
      sum(x-1, res + x)
    else
      sum(x-1, res)
    end
  end


end
