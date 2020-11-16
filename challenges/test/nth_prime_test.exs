defmodule NthPrimeTest do
  use ExUnit.Case
  import Challenges.NthPrime

  test "test whether a number is prime" do
    assert prime? 3
    assert prime? 11
    assert prime? 79
  end

  test "get next prime number after x" do
    assert next_prime(3) == 5
    assert next_prime(4) == 5
    assert next_prime(74) == 79
  end

  test "get n-th prime number" do
    assert get(6) == 13
    assert get(10001) == 104743
  end
end
