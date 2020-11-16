defmodule SumSquareDifferenceTest do
  use ExUnit.Case
  import Challenges.SumSquareDifference

  test "get the sum of the squares of the first n natural numbers" do
    assert sum_squares(10) == 385
    assert sum_squares(100) == 338350
  end

  test "get the square of the sum of the first n natural numbers" do
    assert square_sum(10) == 3025
    assert square_sum(100) == 25502500
  end

  test "get the absolute value of the difference between the square of the sum and the sum of the squares of the first n natural numbers" do
    assert get(10) == 2640
    assert get(100) == 25164150
  end

end
