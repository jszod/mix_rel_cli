defmodule MixRelCli.Cli do

  require Logger

  def main do
    Logger.info("run started")
    args = System.argv()
    IO.puts("CLI started with args: #{inspect(args)}")
    process()

  end

  defp process do
    IO.write(">") # display some prompt
    input = IO.gets("") |> String.trim()

    case input do
      "exit" ->
        IO.puts("Goodbye")
        Logger.info("Exiting cli")
        System.halt(0)

      _ ->
        IO.puts ("You entered: #{:input}")
        Logger.info("User entered: #{input}")
        process() # continue processeing
    end
  end

end
