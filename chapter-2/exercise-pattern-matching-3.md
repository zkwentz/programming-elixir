`[ a, b, a ] = [ 1, 2, 3 ]`
*Hypothesis*: Won't match.
Correct.

`[ a, b, a ] = [ 1, 1, 2 ]`
*Hypothesis*: Won't match.
Correct.

`a = 1`
*Hypothesis*: Will match.
Correct.

`^a = 2`
*Hypothesis*: Will match.
Correct.

`^a = 1`
*Hypothesis*: Won't match.
Correct.

`^a = 2 - a`
*Hypothesis*: Will match.
Incorrect. `no match of right hand side value: 0` 
TODO: _why?_

I also learned that caret operator is only available on the left-hand side of the match, when I tried `a = 2 - ^a`.
