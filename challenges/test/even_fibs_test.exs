defmodule EvenFibsTest do
  use ExUnit.Case
  import Challenges.EvenFibs

  test "get the number at n position on the fibonacci sequence" do
    assert fib(0) == 0
    assert fib(1) == 1
    assert fib(2) == 1
    assert fib(12) == 144
    assert fib(14) == 377
  end

  test "get the fibonacci sequence" do
    assert fibs(10) == [0,1,1,2,3,5,8,13,21,34,55]
  end

  test "get the sum of even numbers in the fibonacci sequence smaller than x" do
    assert sum(4_000_000) == 4613732
    assert sum(55) == 2 + 8 + 34
  end

end
