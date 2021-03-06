defmodule EctoAdminExample.Mixfile do
  use Mix.Project

  def project do
    [app: :ecto_admin_example,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {EctoAdminExample, []},
     applications: [:phoenix, :cowboy, :logger, :postgrex, :ecto, :ecto_admin]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [
      {:phoenix, "~> 0.8.0"},
      {:cowboy, "~> 1.0"},
      {:postgrex, ">= 0.0.0"},
      {:ecto, "~> 0.5"},
      {:ecto_admin, "~> 0.0.1", github: "Gazler/ecto_admin"}
    ]
  end
end
