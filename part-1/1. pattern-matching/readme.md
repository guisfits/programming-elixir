# Pattern Matching

Pattern match is the core of the Elixir language. It will be used everywhere and it's the most fundamental concept to programming on it. 

## Notes

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
- You can ignore values on the match using `_`. It's will accept any value and you can't use these values after match. 
- `[1, _, _] = [1, 2, 3]`
- `[1, _, _] = [1, "cat", "dog"]`
- Match will just bind once
- `[a, a] = [1, 1]` <- works fine
- `[a, a] = [1, 2]` <- match error
- But you can _re-matching_ the same variable after
- `a = 1`
- `a = [1, 2, 3]` <- it's not a problem
- You can enforce the value of the variable on match
- `a = 1`
- `a = 2`
- `^a = 1` <- match error: `1` don't matches with `2`

## Quotes
- _Joe Armstrong, Erlang’s creator, compares the equals sign in Erlang to that used in algebra. When you write the equation x = a + 1, you are not assigning the value of a + 1 to x. Instead you’re simply asserting that the expressions x and a + 1 have the same value. If you know the value of x, you can work out the value of a, and vice versa._
