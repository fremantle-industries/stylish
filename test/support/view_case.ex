defmodule Stylish.ViewCase do
  use ExUnit.CaseTemplate
  use Phoenix.HTML

  def render(module, template, assigns) do
    module
    |> apply(:render, [template, assigns])
    |> html_escape()
    |> safe_to_string()
  end

  using do
    quote do
      use AssertHTML

      import Stylish.ViewCase
    end
  end
end
