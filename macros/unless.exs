defmodule ControlFlow do
  defmacro unless(expression, do: block) do
    quote do
      case unquote(expression) do
        result when result in [false, nil] ->
          unquote(block)

        _ ->
          nil
      end
    end
  end
end
