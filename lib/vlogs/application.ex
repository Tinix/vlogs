defmodule Vlogs.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Vlogs.Repo,
      # Start the Telemetry supervisor
      VlogsWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Vlogs.PubSub},
      # Start the Endpoint (http/https)
      VlogsWeb.Endpoint
      # Start a worker by calling: Vlogs.Worker.start_link(arg)
      # {Vlogs.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Vlogs.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    VlogsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
