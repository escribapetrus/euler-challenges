defmodule Multiples3or5Test do
  use ExUnit.Case
  import Challenges.Multiples3or5

  test "finds the sum of all multiples of 3 or 5 below a number" do
    assert sum(10) == 23
    assert sum(1000) == 233168
  end



end
