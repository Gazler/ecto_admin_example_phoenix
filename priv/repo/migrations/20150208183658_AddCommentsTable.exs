defmodule EctoAdminExample.Repo.Migrations.AddCommentsTable do
  use Ecto.Migration

  def up do
    create table(:comments) do
      add :name,    :string
      add :comment, :string
      timestamps
    end
  end

  def down do
    drop table(:comments)
  end
end
