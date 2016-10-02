1. Erlang and Elixir both pattern match, however, Erlang doesn't let you assign to a variable more than once, like you can in Elixir. Elixir allows this because it is the algrebraic representation of equality.
2. A good argument for immutability:

```
count = 99
do_something_with count
puts count
```

You would expect this to output, `99`, however, if your data is mutable, it very well could not.

This by the way is what enables Elixir's concurrency, otherwise, any thread / process could change the state of some data out from under another.
