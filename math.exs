defmodule Math do
  
  defmacro say({:+, _, [lhs, rhs]}) do
    quote do
      lhs = unquote(lhs)
      rhs = unquote(rhs)
      result = lhs + rhs
      IO.inspect "#{lhs} plus #{rhs} is #{result}"
      result
    end
  end

  #[:*, [context: Elixir, import: Kernel], [lhs, rhs]]
  defmacro say({:*, _, [lhs, rhs]}) do
    quote do
      lhs = unquote(lhs)
      rhs = unquote(rhs)
      result = lhs * rhs
      IO.inspect "#{lhs} multiplied #{rhs} is #{result}"
      result
    end
  end

end

