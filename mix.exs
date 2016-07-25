defmodule PowerDNSx.Mixfile do
  use Mix.Project

  def project do
    [app: :powerdnsx,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger, :httpoison]]
  end

  defp deps do
    [{:httpoison, "~> 0.9.0"},
     {:poison, "~> 2.2"},
     {:exvcr, "~> 0.8.0", only: :test}]
  end
end
