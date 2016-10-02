list_concat = fn head, tail ->
  head ++ tail
end

IO.inspect list_concat.([:a,:b],[:c,:d])

sum = fn a, b, c ->
  a + b + c
end

IO.inspect sum.(1,2,3)

pair_tuple_to_list = fn { head, tail } ->
  [head, tail]
end

IO.inspect pair_tuple_to_list.( { 1234, 5678 } )
