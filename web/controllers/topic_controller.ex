defmodule Discuss2.TopicController do
	use Discuss2.Web, :controller

	alias Discuss2.Topic
	def index(conn, _params) do
	  	
		
		end
	end
  def new(conn, _params) do
   
    changeset=Topic.changeset(%Topic{}, %{})

    render conn, "new.html", changeset: changeset
  end
  def create(conn, %{"topic" => topic}) do
  	changeset=Topic.changeset(%Topic{}, topic)
  	case Repo.insert(changeset) do
   {:ok, post}->IO.inspect(post)
   {:error, changeset}->
   	 render conn, "new.html", changeset: changeset
  	end
  	

  end
end