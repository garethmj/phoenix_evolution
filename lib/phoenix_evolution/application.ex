defmodule PhoenixEvolution.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      PhoenixEvolution.Repo,
      # Start the Telemetry supervisor
      PhoenixEvolutionWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: PhoenixEvolution.PubSub},
      # Start the Endpoint (http/https)
      PhoenixEvolutionWeb.Endpoint
      # Start a worker by calling: PhoenixEvolution.Worker.start_link(arg)
      # {PhoenixEvolution.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PhoenixEvolution.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    PhoenixEvolutionWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
