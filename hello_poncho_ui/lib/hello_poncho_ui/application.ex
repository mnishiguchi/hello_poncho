defmodule HelloPonchoUi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      HelloPonchoUiWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: HelloPonchoUi.PubSub},
      # Start the Endpoint (http/https)
      HelloPonchoUiWeb.Endpoint
      # Start a worker by calling: HelloPonchoUi.Worker.start_link(arg)
      # {HelloPonchoUi.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: HelloPonchoUi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    HelloPonchoUiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
