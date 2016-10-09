defmodule CliTest do
  use ExUnit.Case
  doctest Issues

  import Issues.CLI, only: [parse_args: 1]

  test ":help returned by option parsing with -h and --help options" do
    assert parse_args(["-h", "anything"]) == :help
    assert parse_args(["--help", "anything"]) == :help
  end

  test "three values returned if three given" do
    assert parse_args(["zkwentz","programming-elixir","99"]) == {"zkwentz","programming-elixir",99}
  end

  test "count defaults to 4 when two args given" do
    assert parse_args(["zkwentz","programming-elixir"]) == {"zkwentz","programming-elixir",4}
  end
end
