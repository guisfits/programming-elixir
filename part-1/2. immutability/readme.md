# Immutability

## Notes
- Immutabble data is know data
- Immutability allows multithreading safety
- All Elixir data is immutable
- You can rebind the value of an variable, but the old value still exists if has other looking for it
- If you have a list with `[1,2,3]` and want to add `4` to it, you don't change it, you create a new value and the old still unchanged. 
- You don't change values, you transform it
- As the values as immutable, Elixir can reuse it to optimize memory use
- `list = [1, 2, 3]`, and you do some like `list2 = [0 | list]` the `0` will point to `list` has next element
- Each process in Elixir has his own memory heap
- In most cases the process ends before has need to use the garbage collector
- If the heap is fulfill and the GC is needed, it will runs faster than most languages because it only runs on process heap and it to smaller than an application heap

## Quotes
- _Because Elixir knows that existing data is immutable, it can reuse it, in part or as a whole, when building new structures._
- _In a functional language, we always transform data. We never modify it in place._

