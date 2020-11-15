defmodule Challenges.PythagoreanTriplet do

  def product({a,b,c}), do: a*b*c

  def find(sum, n \\ 100) do
      triplets(n)
      |> Enum.filter(fn {a,b,c} -> (a + b + c == sum) end)
      |> Enum.at(0)
  end

  def triplets(n) do
    for x <- 1..n, y <- 1..n, x > y, do: gen_triplet(x,y)
  end

  def gen_triplet(m,n) do
    a = 2 * m * n |> round
    b = :math.pow(m,2) - :math.pow(n,2) |> round
    c = :math.pow(m,2) + :math.pow(n,2) |> round

    {a,b,c}
  end

  # use this auxiliary function to test whether a triplet is pythagorean
  def pythagorean?({a,b,c}), do: (:math.pow(a,2) + :math.pow(b,2)) == :math.pow(c,2)

end
