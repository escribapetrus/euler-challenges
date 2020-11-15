defmodule PythagoreanTripletTest do
  use ExUnit.Case
  import Challenges.PythagoreanTriplet

  test "asserts a triplet is pythagorean, i.e. a^2 + b^2 == c^2" do
    assert pythagorean? {3,4,5}
  end

  test "generates a pythagorean triplet from values m and n" do
    x = :rand.uniform(20)
    y = :rand.uniform(20)
    assert pythagorean? gen_triplet(x,y)
  end

  test "generates a list of pythagorean triplets" do
    assert triplets(100) |> Enum.all?(&(pythagorean?(&1)))
  end

  test "finds a triplet whose sum of sides is x -- e.g. x == 1000" do
    assert find(1000) == {200, 375, 425}
  end

  test "multiplies the sides of a triplet" do
    assert product({200, 375, 425}) == 31875000
  end

end
