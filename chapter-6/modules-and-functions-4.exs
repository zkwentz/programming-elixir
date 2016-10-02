defmodule Sum do
  def forty_one(0), do: 0
  def forty_one(n), do: n + forty_one(n-1)
end
