defmodule Stylish.PlayIcon do
  use Phoenix.Component

  @deprecated "Use Stylish.Icons.play/1 instead."
  def play_icon(assigns \\ %{}) do
    Stylish.Icons.play(assigns)
  end
end
