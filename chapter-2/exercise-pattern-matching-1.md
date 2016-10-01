`a = [1,2,3]`

*Hypothesis*

```
IEx(1) > a
[1,2,3]
```

`a = 4`

*Hypothesis*

```
IEx(1) > a
4
```

*Results*: Correct.

`4 = a`

*Hypothesis*

```
IEx(1) > a
4
```

*Results*: Correct.

`[a,b] = [1,2,3]`

*Hypothesis*: Will not match, or b = 2,3
*Results*: Did not match.

`a = [ [ 1,2,3 ] ]`

*Hypothesis*

```
IEx(1) > a
[ [ 1,2,3 ] ]
```

*Results*: Correct.

` [a] = [ [ 1,2,3 ] ]`

*Hypothesis*

```
IEx(1) > a
[1,2,3]
```

*Results*: Correct.

`[[a]] = [ [ 1,2,3 ] ]`

*Hypothesis*: Will not match because a cannot match three different literals.
*Results*: Did not match.
