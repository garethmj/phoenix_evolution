defmodule PhoenixEvolution.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_evolution,
    adapter: Ecto.Adapters.Postgres
end
