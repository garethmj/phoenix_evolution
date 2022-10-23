# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_evolution,
  ecto_repos: [PhoenixEvolution.Repo]

# Configures the endpoint
config :phoenix_evolution, PhoenixEvolutionWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "g/SDmq8Gm/pvs41NPZGKie6MM0qlYlJS7x+pCEI8EJ2YPVDBndxeZPpyF/vMeBmw",
  render_errors: [view: PhoenixEvolutionWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixEvolution.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
