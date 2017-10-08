# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :schedex,
  ecto_repos: [Schedex.Repo]

# Configures the endpoint
config :schedex, SchedexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nlMzjg+mDShkOKPdyZBq5QZH+ElLHWOBeHtK3D7xDmLoU1nk0XE3VAvheWri34M6",
  render_errors: [view: SchedexWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Schedex.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
