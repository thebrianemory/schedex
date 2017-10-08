defmodule SchedexWeb.PageController do
  use SchedexWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
