defmodule MyList.Max do
  def max(list), do: _max(list, 0)

  # private methods
  defp _max([], max_value), do: max_value
  defp _max([ head | tail ], max_value), do: _max(tail, Kernel.max(head, max_value))
end
