# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :journeyTester,
  ecto_repos: [JourneyTester.Repo]

# Configures the endpoint
config :journeyTester, JourneyTester.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "F6l15VeeTlvN/YpPeX2CvJH1Hhri0wJwx6CL3AWvt2k+DRMghEDUYIaTcpmhEgPm",
  render_errors: [view: JourneyTester.ErrorView, accepts: ~w(html json)],
  pubsub: [name: JourneyTester.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
