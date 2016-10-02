#Convert a float to a string with two decimal digits. (Erlang)
:io.format("~1.3f~n",[5.67890])
#Get the value of an operating-system environment variable. (Elixir)
System.get_env("HOME")
#Return the extension component of a file name (so return .exs if given "dave/test.exs"). (Elixir)
Path.extname("zach/test.exs")
#Return the process’s current working directory. (Elixir)
System.cwd
#Convert a string containing JSON into Elixir data structures. (Just find; don’t install.)
# devinus/poison
#Execute a command in your operating system’s shell.
System.cmd("say", ["hi"])
