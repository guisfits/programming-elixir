defmodule Factorial do
  def of(0), do: 1
  def of(x) when is_integer(x) and x > 0, do: x * of(x-1)
end
