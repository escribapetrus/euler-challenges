defmodule Challenges.SumSquareDifference do
  @moduledoc """
  The sum of the squares of the first ten natural numbers is,The square of the sum of the first ten natural numbers is,
  hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is.
  Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
  """

  def get(n), do: sum_squares(n) - square_sum(n) |> abs

  def sum_squares(n) do
    1..n
    |> Stream.map(&(:math.pow(&1,2) |> round))
    |> Enum.reduce(&(&1 + &2))
  end

  def square_sum(n) do
    1..n
    |> Enum.reduce(&(&1 + &2))
    |> :math.pow(2)
    |> round
  end

end
