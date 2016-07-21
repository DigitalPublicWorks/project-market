# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :public_works,
  ecto_repos: [PublicWorks.Repo]

# Configures the endpoint
config :public_works, PublicWorks.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OGL1RUGvjOpyJHEvgIvN6ooY/XVJ7yXZz03ag5J1F8SyLcljjFOXQIW3vRvZ0zCd",
  render_errors: [view: PublicWorks.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PublicWorks.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
