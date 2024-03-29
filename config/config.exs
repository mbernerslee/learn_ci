# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :learn_ci,
  ecto_repos: [LearnCi.Repo]

# Configures the endpoint
config :learn_ci, LearnCiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tSC9VWT/zzQS1I8JaCqE0iJTs8e9qj9eufbOlCdvrdtsXlondrAzKm2jkqGO6IfO",
  render_errors: [view: LearnCiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LearnCi.PubSub,
  live_view: [signing_salt: "AHpBTnlI"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
