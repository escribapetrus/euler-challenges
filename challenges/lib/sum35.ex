defmodule Challenges.Sum35 do
  @moduledoc """
  Documentation for `Challenges`.
  """

  @spec sum_multiples_3_5(non_neg_integer) :: integer
  @doc """
  Hello world.
  ## Examples

      iex> Challenges.hello()
      :world
  """
  def sum_multiples_3_5(x) when x < 1000 do
    sum35(x,0)
  end

  defp sum35(0,res), do: res
  defp sum35(x, res) do
    condition = rem(x,3) == 0 || rem(x,5) == 0
    if (condition) do
      sum35(x-1, res + x)
    else
      sum35(x-1, res)
    end
  end


end
