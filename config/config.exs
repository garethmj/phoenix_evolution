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
  secret_key_base: "WiQdx9FSa0B9p29hn8wAETj5Z8r0xIua22QeQIfnPcd2mXE99+pQ3VLWGYBG+Rll",
  render_errors: [view: PhoenixEvolutionWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixEvolution.PubSub,
  live_view: [signing_salt: "6yIsoHO0"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
