# EctoAdminExample

An example of using [EctoAdmin](https://github.com/Gazler/ecto_admin) with [Phoenix](https://github.com/phoenixframework/phoenix)

## Running

To start your new Phoenix application:

1. Install dependencies with `mix deps.get`
2. Create the database with `mix ecto.create`
3. Run the migrations with `mix ecto.migrate`
4. Start Phoenix endpoint with `mix phoenix.server`
5. Create some Users and Comments iex by doing:

```
iex -S mix
iex(1)> EctoAdminExample.Repo.insert(%EctoAdminExample.User{name: "Test User"})
iex(2)> EctoAdminExample.Repo.insert(%EctoAdminExample.Comment{comment: "Test Comment"})
```

Now you can visit `localhost:4000/admin` from your browser and you should see the created comments and users.
