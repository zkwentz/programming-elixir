defmodule Issues.Formatter do

  @max_title_length 30

  def format_issues(issues) do
    issues
    |> max_lengths
    |> print_header
    |> print_separator
    _format_issues(issues)
  end


  defp _format_issues([head | tail]) do
    print_formatted_issue(head)
    _format_issues(tail)
  end
  defp _format_issues([]), do: :ok

  def print_formatted_issue(%{"number" => number, "created_at" => created_at, "title" => title}) do
    IO.puts "#{number} | #{created_at} | #{String.slice(title,0..@max_title_length)}"
  end

  def max_lengths(issues) do
    max_length_of(issues, "number")
  end

  def max_length_of(issues, property) do
    issues
    |> Enum.max_by(&(&1[property]))
    |> Map.get(property)
    |> to_string
    |> String.length
  end

  def print_header(max_number_length) do
    padding = String.duplicate(" ",Kernel.trunc(max_number_length / 2))
    IO.puts "#{padding} ##{padding}| created_at#{String.duplicate(" ",10)} | title"
    max_number_length
  end

  def print_separator(max_number_length) do
    padding = String.duplicate("-",max_number_length+1)
    IO.puts "#{padding}|#{String.duplicate("-",22)}|#{String.duplicate("-",@max_title_length+2)}"
  end

end
