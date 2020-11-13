defmodule Challenges.EvenFibs do

  def sum(max), do: iter_fibs(1,0,max)

  def fib(n), do: fib(1,1,n)

  defp fib(x,_,0), do: x
  defp fib(x,y,n) do
    fib(y, x+y, n-1)
  end

  defp iter_fibs(x, res, max) do
    fib_x = fib(x)
    condition = rem(fib_x,2) == 0
    case (fib_x < max) do
      true ->
        if (condition) do
          iter_fibs(x+1, res + fib(x), max)
        else
          iter_fibs(x+1, res, max)
        end
        _ -> res
    end
  end

end
