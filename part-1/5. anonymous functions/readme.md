# Anonymous Functions

## Notes
- Anonymous function is created using `fn` keyword
- `fn parameters-list -> body end`
- You can define a function and bind to a variable
- `sum = fn (a, b) -> a + b end`
- `sum.(1, 2)` >> `3` # the dot indicates the function call
- If your a.f. don't need params, you still need () >> `function_name.()`
- As any function, params on a.f. are matches. 
- We can do: `fn {a, b} -> {b, a} end`
- Is possible to an a.f. having multiples handlers.. basic to pattern matching
```elixir
handle_open = fn      
  {:ok, file} -> IO.read(file, :line)
  {_, error} -> :file.format_error(error)
end 
```
- You can return a function from another function
- `fun1 = ​fn​ -> ​fn​ -> ​"​​Hello"​ ​end​ ​end​`
- `fun1.().()` >> `"Hello"`
- Inner functions reminder their original environment
- `greeter = ​fn​ name -> (​fn​ -> ​"​​Hello ​​#{​name​}​​"​ ​end​) ​end​`
- `dave_greeter = greeter.(​"​​Dave"​)`
- `dave_greeter.()` >> `"Hello Dave"`
- The `&` notation returns a function with `&1`, `&2`, `&n`... as the correspond parameters.
- `sum = &(&1 + &2)`
- `sum.(1, 2)` >> `3`



## Quotes
