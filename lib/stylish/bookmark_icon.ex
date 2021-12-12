defmodule Stylish.BookmarkIcon do
  use Phoenix.Component

  @deprecated "Use Stylish.Icons.bookmark/1 instead."
  def bookmark_icon(assigns \\ %{}) do
    Stylish.Icons.bookmark(assigns)
  end
end
