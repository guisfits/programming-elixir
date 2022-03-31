# Modules and Named Functions

## Notes

- `defmodule do .. end` wrap functions
- `def name(params) do ... end` defines a named function
- If you have more than one function with same named, but with different _arity_, Elixir don't related those functions
- Instead `do...end` body, you can use `def func(args), do: body`
- `do...end` is just a syntax sugar for `...(), do: (body)` expression
- You can do that too on `defmodule` # but, please, don't 
- Is common to create more than one function with different pattern matches. The _anchor_ match must be the first one, and they must be adjacent. 
- example at `factorial.ex`
- Is possible to _guard_ functions. With `when` syntax you can write some validation to that function. First Elixir will match the params, then will validate the `when` clause, if both are valid, the function is executed, if not, you raise a match error.
- example at `guard.ex`
- Default values are given with `\\` syntax. 
- Following this definition: `def func(a, b \\ 1, c \\ 2, d)`, when we call it passing
- `Example.func(​"​​a"​, ​"​​b"​)` >> `["a", 2, 3, "b"]`
- `Example.func(​"​​a"​, ​"​​b"​, ​"​​c"​)` >> `["a", "b", 3, "c"]`
- `Example.func(​"​​a"​, ​"​​b"​, ​"​​c"​, ​"​​d"​)` >> `["a", "b", "c", "d"]​`
- Parameters are matched left to right
- If you overload a function like this:
1. `​def​ func(p1, p2 \\ 2, p3 \\ 3, p4)`
2. `​def​ func(p1, p2)`
- Elixir can define a match for those and will raise a `Compiler Error`
- The pipe-operator `|>` works connecting one function to another
- It pass the response of the last function executed to the next. This way, you don't need create a variable always and pass to the next function, also, it's make explicit that you are transforming data. 
- Modules wraps your functions
- You can define a module inside another module, but, is the same as you define in another file with `.` split the name. 
- A directive in a module is _lexically scoped_ - it takes effect from the place you wrote it until the end of the module.
- `import` directive bring functions and macros imported module to your module. 
- The full syntax is `​  import Module [, only:|except: ]`
- Write `only` and `expect` when you want to specify functions and macros to import
- An example: `​  ​import​ List, ​only:​ [ ​flatten:​ 1, ​duplicate:​ 2 ]`
- Alternatively, you can give only: one of the atoms `:functions` or `:macro`, and import will bring in only functions or macros.
- With `alias` syntax you can cut down typing
- `alias My.Other.Module.Parser` and now you can just use `Parser.func()` 
- A variation of this is using `...Parser, as: MyParserName` or where you want to import more than one module with same previous name, just use `alias My.Other.Module.{Parser, Runner}`

