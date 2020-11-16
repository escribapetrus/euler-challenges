defmodule Challenges.NthPrime do
  @moduledoc """
    By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
    What is the 10 001st prime number?
  """
  def get(n) do
    primes = Stream.iterate(2, &(next_prime(&1)))
    primes
    |> Enum.take(n)
    |> Enum.at(n - 1)
  end

  def next_prime(x) do
    cond do
      (prime? x + 1) -> x + 1
      true -> next_prime(x + 1)
    end
  end

  #trial division
  def prime?(x), do: prime?(x,2)
  def prime?(1, _), do: true
  def prime?(x, div) do
    cond do
      (x == div) -> true
      (rem(x,div) == 0) -> false
      true -> prime?(x, div + 1)
    end
  end
end
