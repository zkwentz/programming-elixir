defmodule Chop do

  def guess(actual, actual.._), do: print(actual)
  def guess(actual, _..actual), do: print(actual)
  def guess(actual, low..high) when low < high and actual >= low and actual <= high do
    the_guess = div((high-low),2) + low
    IO.puts "Is it #{inspect(the_guess)}"
    guess(actual, low..the_guess-1) || guess(actual, the_guess..high)
  end
  def guess(_,_), do: false

  def print(actual), do: IO.puts(inspect(actual))

end
