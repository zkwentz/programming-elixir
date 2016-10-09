defmodule CliTest do
  use ExUnit.Case
  doctest Issues

  import Issues.CLI, only: [
    parse_args: 1,
    sort_into_ascending_order: 1,
    convert_to_list_of_maps: 1
  ]

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

  test "sort ascending orders to correct way" do
    result = sort_into_ascending_order(fake_created_at_list(["c","a","b"]))
    issues = for issue <- result, do: issue["created_at"]
    assert issues == ~w{a b c}
  end

  defp fake_created_at_list(values) do
    data = for value <- values,
           do: [{"created_at", value}, {"foo","bar"}]
    convert_to_list_of_maps data
  end
end
