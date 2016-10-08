defmodule MyList.Caesar do
  def caesar([], _increment), do: []
  def caesar([ head | tail ], increment), do: [ _increment(head, increment) | caesar(tail, increment) ]

  # private methods
  defp _increment(n, increment) when n + increment > ?z, do: (n + increment) - (increment*2)
  defp _increment(n, increment) when n + increment <= ?z, do: n + increment
end
