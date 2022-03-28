# Modules and Named Functions

## Notes

- `defmodule do .. end` wrap functions
- `def name(params) do ... end` defines a named function
- If you have more than one function with same named, but with differente _arity_, Elixir don't relationated thoses functions
- Instead `do...end` body, you can use `def func(args), do: body`
- `do...end` is just a syntax sugar for `...(), do: (body)` expression
- You can do that too on `defmodule` # but, please, don't 
