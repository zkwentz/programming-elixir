### On Pattern Matching

Erlang and Elixir both pattern match, however, Erlang doesn't let you assign to a variable more than once, like you can in Elixir. Elixir allows this because it is the algrebraic representation of equality.

### On Immutability & Concurrency

A good argument for immutability:

```
count = 99
do_something_with count
puts count
```

You would expect this to output, `99`, however, if your data is mutable, it very well could not.

This by the way is what enables Elixir's concurrency, otherwise, any thread / process could change the state of some data out from under another.

### On Currying

The reason currying is possible is not that you are pushing args up to one parent function, but that each function down the curry tree wraps an outer function with its scope bound. This gives a lot of insight into ember's _closure_ actions.
