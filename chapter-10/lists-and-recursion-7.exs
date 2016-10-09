defmodule MyList.Span do
  def span(from,to) when from == to, do: [to]
  def span(from,to), do: [ from | span(from + 1, to) ]

  def primes_up_to(n) do
    for x <- span(2,n), _prime(x), do: x
  end

  defp _prime(2), do: true
  defp _prime(a) do
    !((for x <- span(2,a-1), do: rem(a,x) == 0) |> Enum.any?)
  end
end


