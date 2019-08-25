defmodule EX.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :ex,
      version: "0.8.0",
      elixir: "~> 1.7",
      description: "EX Exchange",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(doc src mix.exs LICENSE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :ex,
      links: %{"GitHub" => "https://github.com/enterprizing/ex"}
    ]
  end

  def application() do
    [ mod: {:ex, []},
      applications: [:ranch, :cowboy, :n2o, :tic, :fix, :trade]
    ]
  end

  def deps() do
    [
      {:n2o, ">= 0.0.0"},
      {:tic, ">= 0.0.0"},
      {:fix, ">= 0.0.0"},
      {:trade, ">= 0.0.0"},
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end
end
