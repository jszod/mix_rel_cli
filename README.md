# MixRelCli

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `mix_rel_cli` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:mix_rel_cli, "~> 0.1.0"}
  ]
end
```

## Purpose

Testing mix release functionality to build a simple CLI. This CLI just returns what the user
types until the user types "exit"


## Buiding a Release Notes

The releases are defined in `mix.exs` in the `project` section.

##

To get the CLI started up I added
```
MixRelCli  # Start the CLI loop processing
```
to the `start` function in the `MixRelCli` module

```
defmodule MixRelCli do
require Logger

  def start(_type, _args) do

    MixRelCli.Cli.main/0  # Start the CLI loop processing

    children = [
      # Add any supervised processes here
    ]

    opts = [strategy: :one_for_one, name: MixRelCli.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
```


Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/mix_rel_cli>.

