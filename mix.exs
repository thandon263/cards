defmodule Cards.MixProject do
  use Mix.Project

  @github_url "https://github.com/thandon263/cards"

  def project do
    [
      app: :cards,
      version: "1.1.12",
      elixir: "~> 1.7",
      description: "A card game package for creating and dealing cards.",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      source_url: @github_url,
      homepage_url: @github_url,
      files: ~w(mix.exs lib LICENSE.md README.md),
      packages: [
        maintainers: ["Thando Ncube"],
        licenses: ["MIT"],
        links: %{
          "GitHub" => @github_url
        }
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      { :ex_doc, "~> 0.12" }
    ]
  end
end
