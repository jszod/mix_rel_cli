defmodule MixRelCli do
require Logger

  @moduledoc """
  Documentation for `MixRelCli`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> MixRelCli.hello()
      :world

  """
  # def hello do
  #   :world
  # end

  def start(_type, _args) do

    MixRelCli.Cli.main/0  # Start the CLI loop processing

    children = [
      # Add any supervised processes here
    ]

    opts = [strategy: :one_for_one, name: MixRelCli.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
