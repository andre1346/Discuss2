defmodule Discuss2.Router do
  use Discuss2.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Discuss2 do
    pipe_through :browser # Use the default browser stack

    #get "/", TopicController, :index
    #get "/topics/new", TopicController, :new
    #post "/topics", TopicController, :create
    #get "/topics/:id/edit", TopicController, :edit
    #put "/topics/:id", TopicController, :update
    resources"/", TopicController
  end
  scope "/auth", Discuss2  do
    pipe_through :browser

    get "/:provider", AuthController, :request
    get "/:provider/callback", AuthController, :calback


    end
  end

  # Other scopes may use custom stacks.
  # scope "/api", Discuss2 do
  #   pipe_through :api
  # end

