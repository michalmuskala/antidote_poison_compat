defmodule AntidotePoisonCompat.MixProject do
  use Mix.Project

  def project do
    [
      app: :antidote_poison_compat,
      version: "0.1.0",
      elixir: "~> 1.4",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:antidote, github: "michalmuskala/antidote"}
    ]
  end
end
