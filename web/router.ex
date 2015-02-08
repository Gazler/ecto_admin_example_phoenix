defmodule EctoAdminExample.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/", EctoAdminExample do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  get "/admin*args", EctoAdmin.Router, :dispatch

  # Other scopes may use custom stacks.
  # scope "/api", EctoAdminExample do
  #   pipe_through :api
  # end
end
