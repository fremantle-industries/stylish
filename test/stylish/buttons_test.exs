defmodule Stylish.ButtonsTest do
  use Stylish.ViewCase

  test ".copy/1 renders a copy-button" do
    html = render_component(&Stylish.Buttons.copy/1, class: ["mt-2"])

    assert assert_html(html, "copy-button")
  end
end
