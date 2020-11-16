defmodule Challenges.SumPrimes do
  @moduledoc """
  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
  Find the sum of all the primes below two million = 142913828922
  """

  import Challenges.NthPrime, only: [primes: 0]

  def get(max) do
    primes_below(max)
    |> Enum.reduce(0, &(&1 + &2))
  end

  def primes_below(x) do
    primes()
    |> Stream.take_while(&(&1 <= x))
  end
end
