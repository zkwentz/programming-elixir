fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, last) -> last
end

fizz_and_buzz = fn n ->
  IO.puts fizz_buzz.(rem(n,3),rem(n,5),n)
end

fizz_and_buzz.(10)
fizz_and_buzz.(11)
fizz_and_buzz.(12)
fizz_and_buzz.(13)
fizz_and_buzz.(14)
fizz_and_buzz.(15)
fizz_and_buzz.(16)
fizz_and_buzz.(17)
