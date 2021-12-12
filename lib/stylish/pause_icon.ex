defmodule Stylish.PauseIcon do
  use Phoenix.Component

  @deprecated "Use Stylish.Icons.pause/1 instead."
  def pause_icon(assigns \\ %{}) do
    Stylish.Icons.pause(assigns)
  end
end
