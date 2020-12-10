# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :sample_project,
  ecto_repos: [SampleProject.Repo]

# Configures the endpoint
config :sample_project, SampleProjectWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vXp8WvPUBgxapXbNUigfWVuNKDTlmjF4JU+Upbh+jAmY92thL/MCni0zDtMuYsoQ",
  render_errors: [view: SampleProjectWeb.ErrorView, accepts: ~w(html json)],
  pubsub_server: SampleProject.PubSub

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
