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
  secret_key_base: "5eW67QdIbaswfStizvVcx52gUnW9Dx44nB2HpBgZk+Jqz0T5JYmQG6rc8UkZfQ5C",
  render_errors: [view: PhoenixEvolutionWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixEvolution.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "r3YhtSpe"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
