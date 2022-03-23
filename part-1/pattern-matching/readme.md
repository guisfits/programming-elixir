# Pattern Matching

- `=` is the _match operator_, not assignment
- If the left-hand side is a variable, and the right-hand is a literal, Elixir will match the value of the right to the left side.
- If the form of the two values matches, so the left side is equal to the right side
- `a = 1` it means that: _to `a` be true, `a` must be `1`_
- The invert is true also, `1 = a`
- You can do this with more complex examples
- `a = [1, 2, 3]`
- `[a, b, c] = [1, 2, 3]`
- `[a, 2, c] = [1, 2, 3]`
- `[a] = [[1,2,3]]`
- But, if some value on the left side is not a variable, and is not the same value on the right side, it's won't matches
- `[a, 4, c] = [1, 2, 3]` <- MATCH ERROR
