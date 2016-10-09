defmodule OK do
  def ok!({:ok, data}), do: data
  def ok!({_,reason}), do: raise reason
end
