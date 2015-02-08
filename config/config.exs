# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :ecto_admin_example, EctoAdminExample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7O+SR3DG87TohGA2kw15Igjj9LXfvVSHQqU+lZq62qsiiRNbX8m/DdDlHwuduxSL",
  debug_errors: false

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :ecto_admin_example, EctoAdminExample.Repo,
  database: "ecto_admin_example_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"
