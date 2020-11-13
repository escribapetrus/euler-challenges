defmodule Challenges.SumSquareDifference do
  @moduledoc """
  The sum of the squares of the first ten natural numbers is,The square of the sum of the first ten natural numbers is,
  hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is.
  Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
  """
  def get(x), do: sum_squares(x) - square_sum(x) |> abs

  def sum_squares(x) do
    1..x
    |> Stream.map(&(:math.pow(&1,2) |> round))
    |> Enum.reduce(&(&1 + &2))
  end

  def square_sum(x) do
    1..x
    |> Enum.reduce(&(&1 + &2))
    |> :math.pow(2)
    |> round
  end

end
