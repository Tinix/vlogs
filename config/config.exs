# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :vlogs,
  ecto_repos: [Vlogs.Repo]

# Configures the endpoint
config :vlogs, VlogsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ee1vsfdDs+l2d0gzuOrzQhxJ5EfKNsUW7pll/Dh7C9gDd0Jz2JMit/hKj92KOO4E",
  render_errors: [view: VlogsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Vlogs.PubSub,
  live_view: [signing_salt: "HX7gATht"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
