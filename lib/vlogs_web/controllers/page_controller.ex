defmodule VlogsWeb.PageController do
  use VlogsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
