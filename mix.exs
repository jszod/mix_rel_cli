defmodule MixRelCli.MixProject do
  use Mix.Project

  def project do
    [
      app: :mix_rel_cli,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      release: releases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {MixRelCli, []},
      extra_applications: [:logger]
    ]
  end

  def releases do
    [
      demo: [
       include_executables_for: [:unix],
        applications: [runtime_tools: :permanent],
        steps: [:assemble]
      ]
    ]
  end


  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

end
