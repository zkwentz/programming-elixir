defmodule FizzBuzz do
  def up_to(n) when n > 0 do
    1..n |> Enum.map(&_fizz_buzz/1)
  end

  defp _fizz_buzz(n) do
    case {rem(n,3), rem(n,5)} do
      {0,0} ->
        "FizzBuzz"
      {0,_} ->
        "Fizz"
      {_,0} ->
        "Buzz"
      _ ->
        n
    end
  end
end
