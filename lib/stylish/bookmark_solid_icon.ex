defmodule Stylish.BookmarkSolidIcon do
  use Phoenix.HTML
  import Phoenix.LiveView.Helpers, only: [sigil_H: 2]

  def bookmark_solid_icon(assigns \\ %{}) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor" phx-update="ignore">
      <path d="M5 4a2 2 0 012-2h6a2 2 0 012 2v14l-5-2.5L5 18V4z" />
    </svg>
    """
  end
end
