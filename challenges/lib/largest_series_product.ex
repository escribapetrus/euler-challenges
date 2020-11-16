defmodule Challenges.LargestSeriesProduct do

  # def slice(_,0), do: []
  # def slice(num, n) do
  #   tail = rem(num,10)
  #   cond do
  #     (tail > 0) -> [tail | slice(div(num,10),n-1)]
  #     true -> []
  #   end
  # end

  # def product([]), do: 0
  # def product(slice), do: slice |> Enum.reduce(&(&1*&2))

  # def slice_iter(num,len, res) do
  #   slice = slice(num,len)
  #   product = product(slice)

  #   cond do
  #     (num == 0) -> res
  #     (product >= res) -> slice_iter(div(num,10), len, product)
  #     (res > product) -> slice_iter(div(num,10), len, res)
  #   end

  # end
  def get(num,len, res \\ 0) do
    product = slice_product(num,len)

    cond do
      (num == 0) -> res
      (product >= res) -> get(div(num,10), len, product)
      (res > product) -> get(div(num,10), len, res)
    end

  end

  def slice_product(_,0), do: 1
  def slice_product(num, n) do
    tail = rem(num,10)
    cond do
      (tail > 0) -> tail * slice_product(div(num,10),n-1)
      true -> 0
    end
  end



end
