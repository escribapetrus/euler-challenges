defmodule Challenges.NthPrime do
  @moduledoc """
    By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
    What is the 10 001st prime number?
  """

  def get(n) do
    primes()
    |> Enum.take(n)
    |> Enum.at(n - 1)
  end

  def primes do
    Stream.iterate(2, &(next_prime(&1)))
  end

  def next_prime(x) do
    cond do
      (prime? x + 1) -> x + 1
      true -> next_prime(x + 1)
    end
  end

  def prime?(x), do: prime?(x,2)
  def prime?(x, _) when x in [2,3], do: true
  def prime?(x,div) do
    x_ = x |> :math.sqrt |> floor |> round
    cond do
      (x == 1) -> false
      (rem(x,div) == 0) -> false
      (div >= x_) -> true
      (div == 2) -> prime?(x, 3)
      true -> prime?(x,div + 2)
    end
  end
end
