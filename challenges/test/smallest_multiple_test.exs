defmodule SmallestMultipleTest do
  use ExUnit.Case
  import Challenges.SmallestMultiple

  test "get the smallest number divisible by all integers from 1 to n" do
    assert get(10) == 2520
    # assert get(20) == 232792560

  end

end
