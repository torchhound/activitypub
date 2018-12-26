# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :activitypub,
  ecto_repos: [Activitypub.Repo]

# Configures the endpoint
config :activitypub, ActivitypubWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Jw5dhb+SA12u4Fo2IF2iZ17w3p7vu6nPR4ZZTpxXr0249du2jxB6ZIP8AEYKus+U",
  render_errors: [view: ActivitypubWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Activitypub.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
