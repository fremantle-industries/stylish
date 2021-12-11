defmodule Stylish.Table do
  use Phoenix.HTML
  import Phoenix.LiveView.Helpers, only: [sigil_H: 2]

  def navigation(assigns) do
    to = assigns[:to]
    conn = assigns[:conn]
    first_page = 1
    current_page = assigns[:current_page]
    previous_page = max(current_page - 1, first_page)
    last_page = assigns[:last_page]
    next_page = min(current_page + 1, last_page)

    to_first_page = to.(conn, first_page)
    to_previous_page = to.(conn, previous_page)
    to_current_page = to.(conn, current_page)
    to_next_page = to.(conn, next_page)
    to_last_page = to.(conn, last_page)

    ~H"""
    <div>
      <%= if first_page < current_page do %>
        <%= link "<<", to: to_first_page, class: "border px-4 py-2 bg-gray-100 opacity-70 hover:opacity-50" %>
      <% else %>
        <%= content_tag :a, "<<", class: "border px-4 py-2 bg-gray-100 opacity-50" %>
      <% end %>
      <%= if previous_page < current_page do %>
        <%= link "<", to: to_previous_page, class: "border px-4 py-2 bg-gray-100 opacity-70 hover:opacity-50" %>
      <% else %>
        <%= content_tag :a, "<", class: "border px-4 py-2 bg-gray-100 opacity-50" %>
      <% end %>
      <%= link current_page, to: to_current_page, class: "border px-4 py-2 bg-gray-100 opacity-70 hover:opacity-50" %>
      <%= if next_page > current_page do %>
        <%= link ">", to: to_next_page, class: "border px-4 py-2 bg-gray-100 opacity-70 hover:opacity-50" %>
      <% else %>
        <%= content_tag :a, ">", class: "border px-4 py-2 bg-gray-100 opacity-50" %>
      <% end %>
      <%= if last_page > current_page do %>
        <%= link ">>", to: to_last_page, class: "border px-4 py-2 bg-gray-100 opacity-70 hover:opacity-50" %>
      <% else %>
        <%= content_tag :a, ">>", class: "border px-4 py-2 bg-gray-100 opacity-50" %>
      <% end %>
    </div>
    """
  end

  @deprecated "Use Stylish.Table.navigation/1 instead."
  def render("navigation.html", assigns) do
    Stylish.Table.navigation(assigns)
  end
end
