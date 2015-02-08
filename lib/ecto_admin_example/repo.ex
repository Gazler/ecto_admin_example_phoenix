defmodule EctoAdminExample.Repo do
  use Ecto.Repo,
    adapter: Ecto.Adapters.Postgres,
    otp_app: :ecto_admin_example
end
