defmodule Stylish.TrashIcon do
  use Phoenix.Component

  @deprecated "Use Stylish.Icons.trash/1 instead."
  def trash_icon(assigns \\ %{}) do
    Stylish.Icons.trash(assigns)
  end
end
