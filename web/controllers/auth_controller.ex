defmodule Discuss2.AuthController do
  use Discuss2.Web, :controller
  plug Ueberauth

 alias Discuu2.User

 def callback( %{assigns: %{ueberauth_auth: auth}}= conn, params) do
 	user_params=%{token: auth.credentials.token, email: auth.info.email, provider: "github"}
 	changeset=User.changeset(%User{}, user_params)

   
  



	end
 end