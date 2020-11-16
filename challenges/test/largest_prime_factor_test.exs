defmodule LargestPrimeFactorTest do
  use ExUnit.Case
  import Challenges.LargestPrimeFactor

  test "get largest factor by successive recursive division from 2 up" do
    assert get(16) == 2
    assert get(260) == 13
    assert get(6636) == 79
  end

end
