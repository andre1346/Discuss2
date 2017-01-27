defmodule Discuss2.TopicController do
	use Discuss2.Web, :controller

	alias Discuss2.Topic
  def new(conn, params) do
   
    changeset=Topic.changeset(%Topic{}, %{})

    render conn, "new.html"
  end
end