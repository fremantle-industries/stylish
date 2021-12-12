defmodule Stylish.BookmarkSolidIcon do
  use Phoenix.Component

  @deprecated "Use Stylish.Icons.bookmark_solid/1 instead."
  def bookmark_solid_icon(assigns \\ %{}) do
    Stylish.Icons.bookmark_solid(assigns)
  end
end
