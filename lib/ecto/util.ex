# TODO delete this file
defmodule Util do
  defmacro inspect_unstruct(term) do
    quote do
      IO.inspect(unquote(term), label: Util.label(__ENV__), charlists: :as_lists, structs: false)
    end
  end

  defmacro inspect(term) do
    quote do
      IO.inspect(unquote(term), label: Util.label(__ENV__), charlists: :as_lists)
    end
  end

  def label(env) do
    {fun, arity} = env.function
    "#{env.module}.#{fun}/#{arity} #{env.line}"
  end
end
