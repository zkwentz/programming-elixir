defmodule GithubIssuesTest do
  use ExUnit.Case
  doctest Issues

  import Issues.GithubIssues, only: [fetch: 2]

  test "a valid user and project, elicits a response from github" do
    assert {:ok, _} = fetch("zkwentz","programming-elixir")
  end

  test "an invalid user and project, returns an error" do
    assert {:error, _} = fetch("does not exist","no repo either")
  end
end
