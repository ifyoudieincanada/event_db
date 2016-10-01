# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :event_db,
  ecto_repos: [EventDb.Repo]

# Configures the endpoint
config :event_db, EventDb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7mxZ1e4g2ku3FHnrfJ/h/BVO0AnM0O1pNQgn5lGRM8RzHKsfYwONQz0g716dqSuo",
  render_errors: [view: EventDb.ErrorView, accepts: ~w(json)],
  pubsub: [name: EventDb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
