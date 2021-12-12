defmodule Stylish.CopyButton do
  use Phoenix.Component

  @deprecated "Use Stylish.Buttons.copy/1 instead."
  def copy_button(assigns) do
    Stylish.Buttons.copy(assigns)
  end
end
