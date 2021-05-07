defmodule Stylish.TableTest do
  use Stylish.ViewCase

  test "renders a nav link for the first, previous, current, next & last pages" do
    html = render(Stylish.Table, "navigation.html", to: &to/2, current_page: 5, last_page: 10)

    assert assert_html(html, "a", max: 5)
    assert assert_html(html, "a:nth-child(1)", text: "<<")
    assert assert_html(html, "a:nth-child(1)", href: "/to/1")
    assert assert_html(html, "a:nth-child(2)", text: "<")
    assert assert_html(html, "a:nth-child(2)", href: "/to/4")
    assert assert_html(html, "a:nth-child(3)", text: "5")
    assert assert_html(html, "a:nth-child(3)", href: "/to/5")
    assert assert_html(html, "a:nth-child(4)", text: ">")
    assert assert_html(html, "a:nth-child(4)", href: "/to/6")
    assert assert_html(html, "a:nth-child(5)", text: ">>")
    assert assert_html(html, "a:nth-child(5)", href: "/to/10")
  end

  test "doesn't render a first or previous link when the current page = first page" do
    html = render(Stylish.Table, "navigation.html", to: &to/2, current_page: 1, last_page: 10)

    assert assert_html(html, "a:nth-child(1)[href='']", text: "<<")
    assert assert_html(html, "a:nth-child(2)[href='']", text: "<")
    assert assert_html(html, "a:nth-child(3)", href: "/to/1")
    assert assert_html(html, "a:nth-child(4)", href: "/to/2")
    assert assert_html(html, "a:nth-child(5)", href: "/to/10")
  end

  test "doesn't render a next or last linkwhen the current page = last page" do
    html = render(Stylish.Table, "navigation.html", to: &to/2, current_page: 10, last_page: 10)

    assert assert_html(html, "a:nth-child(1)", text: "<<")
    assert assert_html(html, "a:nth-child(1)", href: "/to/1")
    assert assert_html(html, "a:nth-child(2)", text: "<")
    assert assert_html(html, "a:nth-child(2)", href: "/to/9")
    assert assert_html(html, "a:nth-child(3)", text: "10")
    assert assert_html(html, "a:nth-child(3)", href: "/to/10")
    assert assert_html(html, "a:nth-child(4)[href='']", text: ">")
    assert assert_html(html, "a:nth-child(5)[href='']", text: ">>")
  end

  defp to(_, page), do: "/to/#{page}"
end
