defmodule EctoAdminExample.Endpoint do
  use Phoenix.Endpoint, otp_app: :ecto_admin_example

  plug Plug.Static,
    at: "/", from: :ecto_admin_example

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_ecto_admin_example_key",
    signing_salt: "EhMQl/au",
    encryption_salt: "xg8d/W+n"

  plug :router, EctoAdminExample.Router
end
