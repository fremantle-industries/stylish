defmodule Stylish.Button do
  use Phoenix.HTML

  def render("delete.html", assigns) do
    ~E"""
    <button
      type="button"
      class="text-red-500 opacity-75 hover:opacity-100 invisible group-hover:visible"
      phx-click="delete"
      phx-value-token-id="<%= t.id %>"
    >
      Delete
    </button>
    """
  end
end
