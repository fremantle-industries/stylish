defmodule Stylish.Ping do
  use Phoenix.HTML

  def render("ping.html", assigns) do
    animate_color_class = assigns[:animate_color_class] || "bg-blue-400"
    relative_color_class = assigns[:relative_color_class] || "bg-blue-500"
    animate = assigns[:animate] || false

    ~E"""
      <span class="flex absolute h-3 w-3 top-0 right-0 -mt-1 -mr-1">
        <span class="<%= if animate, do: "animate-ping" %> absolute inline-flex h-full w-full rounded-full <%= animate_color_class %> opacity-75"></span>
        <span class="relative inline-flex rounded-full h-3 w-3 <%= relative_color_class %>"></span>
      </span>
    """
  end
end
