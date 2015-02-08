defmodule EctoAdminExample.Comment do
  use Ecto.Model

  before_insert __MODULE__, :add_timestamps
  def add_timestamps(user) do
    now = Ecto.DateTime.utc
    user
    |> put_change(:updated_at, now)
    |> put_change(:created_at, now)
  end

  before_update __MODULE__, :bump_updated_at
  def bump_updated_at(user) do
    now = Ecto.DateTime.utc
    user
    |> put_change(:updated_at, now)
  end

  schema "comments" do
    field :name
    field :comment
    field :inserted_at, Ecto.DateTime, default: Ecto.DateTime.local
    field :updated_at, Ecto.DateTime, default: Ecto.DateTime.local
  end
end

