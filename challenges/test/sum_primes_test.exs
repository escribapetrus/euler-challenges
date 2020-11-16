defmodule Challenges.SumPrimesTest do
  use ExUnit.Case
  import Challenges.SumPrimes



  test "get a stream of all prime numbers below x" do
    primes_below_10 =
      primes_below(10)
      |> Enum.to_list()
    assert primes_below_10 == [2,3,5,7]
  end

  test "get the sum of all primes below x" do
    assert get(10) == 17
    assert get(2_000_000) == 142913828922
  end

end
