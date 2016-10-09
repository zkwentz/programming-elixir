defmodule Issues.GithubIssues do
  @user_agent [ {"User-agent", "Elixir Issues"} ]
  @github_url Application.get_env(:issues, :github_url)

  def fetch(user, project) do
    issues_url(user,project)
    |> HTTPoison.get(@user_agent)
    |> handle_response
  end

  def issues_url(user, project) do
    "#{@github_url}/repos/#{user}/#{project}/issues"
  end

  def handle_response({:ok, %{status_code: 200, body: body}}) do
    {:ok, _parse_body(body)}
  end

  def handle_response({_, %{status_code: ___, body: body}}) do
    {:error, _parse_body(body)}
  end

  defp _parse_body(body), do: Poison.Parser.parse!(body)

end
