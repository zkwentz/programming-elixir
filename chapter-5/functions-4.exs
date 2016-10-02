prefix = fn the_prefix ->
  fn the_suffix ->
    IO.puts "#{the_prefix} #{the_suffix}"
  end
end

mrs = prefix.("Mrs")
mrs.("Smith")

prefix.("Elixir").("Rocks")
