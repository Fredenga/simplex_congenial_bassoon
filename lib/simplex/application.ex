defmodule Simplex.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      SimplexWeb.Telemetry,
      Simplex.Repo,
      {DNSCluster, query: Application.get_env(:simplex, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Simplex.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Simplex.Finch},
      # Start a worker by calling: Simplex.Worker.start_link(arg)
      # {Simplex.Worker, arg},
      # Start to serve requests, typically the last entry
      SimplexWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Simplex.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    SimplexWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
