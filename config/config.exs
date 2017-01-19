# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss2,
  ecto_repos: [Discuss2.Repo]

# Configures the endpoint
config :discuss2, Discuss2.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "97u/bd26ZVUmB8LP/LwiRfR4/Xc26YUFGLOLwNjdEfvXB2OxdN7hreMQFOPLfhoa",
  render_errors: [view: Discuss2.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss2.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
