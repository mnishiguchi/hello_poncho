use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hello_poncho_ui, HelloPonchoUiWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
