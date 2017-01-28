defmodule Discuss2.PageController do
   use Discuss2.Web, :controller

  def index(conn, _params) do

    render conn, "index.html"

  end
end
