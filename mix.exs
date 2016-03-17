defmodule CoincapIo.Mixfile do
  use Mix.Project

  def project do
    [app: :coincap_io,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end


  def application do
    [applications: [:logger, :httpoison]]
  end

  defp description do
    """
    WIP, unstable
    Elixir API wrapper for coincap.io. Provides access to market capitalization data of bitcoin, altcoins and cryptotokens.
    """
  end

  defp package do
    [
     files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     maintainers: ["Vitalik Daniuk"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/cyberpunk-ventures/coincap_io_ex"}]
  end

  defp deps do
    [
      {:poison, "~> 1.5"},
      {:httpoison, "~> 0.8"},
      {:credo, "~> 0.3", only: [:test,:dev]},
      {:ex_doc, ">= 0.0.0", only: [:dev]},
      {:exconstructor, ">= 1.0.0"}
    ]
  end
end
