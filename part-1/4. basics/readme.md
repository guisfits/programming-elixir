# Basics

## Value types

### Integers
- Integer literals can be written as decimal `1234`, hexadecimal `0xcafe`, octal `0o765`, and binary `0b1010`;
- Integers can have `_` to improve readability `1_000_000`
- There is no fixed limit on the size of integers, their internal representation grows to fit their magnitude.

### Floats
- A floating-point numbers must have a number before and after the `.`
- Theses all valid floating-point literals: `1.0`, `0.2456`, `0.314159e1`, `314159.0e-5`
- Floats are IEEE 754 double precision, giving them about 16 digits of accuracy and a maximum exponent of around 10308.

### Atoms
- Atoms are constants that represent something’s name.
- An atom's name is its value.
- An atom is write by `:` following UTF-8 letters
- `:fred​`, ​`:is_binary?`, ​`:var@2`, ​`:<>`, ​`:===​`, ​`:"func/3"`, ​`:"long john silver"`, ​`:эликсир`,​ ​`:mötley_crüe​`

### Ranges
- A ranger is a representation of _start_.._end_ integer values
- `1..10`

## System types 

### PIDs
- A PID is a reference to a local or remote process, 
- The PID of the current process is available by calling self. A new PID is created when you spawn a new process.

### Ports
- A port is a reference to a resource (typically external to the application) that you’ll be reading or writing. 

## Collection types

### Tuples
- A tuple is an ordered collection of values. 
- You write a tuple between braces, separating the elements with commas.
- `{1, 2}`, `{​:ok​, 42, ​"​​next"​}`, `{​:error​, ​:enoent​}`;
- A typical Elixir tuple has two to four elements—any more and you’ll probably want to look at _maps_ or _structs_;
- Is common to functions returns tuples as responses with `{:ok, result}` or `{:error, reason}` and you can match and handles those two in different ways;

### List
- A list follows the syntax `[1, 2, 3]`
- Lists in Elixir is not arrays, it is linked data structure
- Because of their implementation, lists are easy to traverse linearly, but they are expensive to access in random order.
- It is always cheap to get the head of a list and to extract the tail of a list.
- As all data in Elixir is immutable, if you want to remove the head of some list and return the tail, Elixir just returns the point to the first item on tail. 
- Concatenation​: `[ 1, 2, 3 ] ++ [ 4, 5, 6 ]` >> `[1, 2, 3, 4, 5, 6]`
- Difference: `[1, 2, 3, 4] -- [2, 4]` >> `[1, 3]`​
- Membership: `1 ​in​ [1,2,3,4]` >> `true`
- Tuple list: `[name: "Guilherle", name: "Juliana"]` >> `[{name: "Guilherle"}, {name: "Juliana"}]`

### Maps
- Maps are a collection of key/value pairs
- `%{key => value, key => value}`
- `%{"AL" => "Alabama", "WI" => "Wisconsin"}`
- `%{{:error, :busy} => :retry, {:error, :enoent} => :fatal}`
- `%{blue: 255, green: 65280, red: 16711680}`
- `%{ String.downcase(name) => name }` >> `${"guilherme" => "Guilherme"}`
- Access values
- `states["AL"]` >> `"Alabama"`
- `response_types[{:error, :busy}]` >> `:retry`
- If its an atom you can use: `colors[:blue]` >> `255`, or: `colors.green` >> `65280`
- Why do we have both maps and keyword lists? Maps allow only one entry for a particular key, whereas keyword lists allow the key to be repeated. Maps are efficient (particularly as they grow), and they can be used in Elixir’s pattern matching;
- In general, use keyword lists for things such as command-line parameters and passing around options, and use maps when you want an associative array.

## Others

### Binaries
- Elixir supports this with the binary data type. Binary literals are enclosed between << and >>.
- `<<1, 2, 1321, 43>>`

### Dates and Times 
- The Date type holds a year, a month, a day, and a reference to the ruling calendar.
- `Date.new(1993, 12, 23)` >> `​{:ok, ~D[1993-12-23]}`
- Ranges
- `d1 = ~D[1993-12-23]` # literal value
- `d2 = ~D[2022-01-31]` 
- `range = Date.range(d1, d2)` >> `#DateRange<~D[1993-12-23], ~D[2022-01-31]>`
- `~​D[2018-03-15] ​in​ range` >> `true`
- Times type contains hour, minute, seconds and fractions of a second.
- `~T[13:30:12.78]`
- There are two date/time types: _DateTime_ and _NaiveDateTime_. The naive version contains just a date and a time; _DateTime_ adds the ability to associate a time zone. The `~N[...]` sigil constructs _NaiveDateTime_ structs.

## Names, Source Files, Conventions, Operators, and So On
- Valid varibles name: `name`, `josé`, `_age`, `まつもと`, `_42`, `адрес!`
- Invalid names: `name•`, `a±2`, `42`
- Module, record, protocol, and behavior names start with an uppercase letter and are BumpyCase. All other identifiers start with a lowercase letter or an underscore, and by convention use underscores between words.
- Source files use two-character indentation for nesting
- Comments start with a hash sign `#` and run to the end of the line.
- Truth: `true`, `false`, `nil` are representation of trugh values, `nil` is falsy
- `a === b` # strict equality   (so 1 === 1.0 is false)​ ​  
- `a !== b` # strict inequality (so 1 !== 1.0 is true)​ 
- `a ==  b` # value equality    (so 1 ==  1.0 is true)​
- `a !=  b` # value inequality  (so 1 !=  1.0 is false)​
- `a  >  b` # normal comparison​ ​  
- `a >=  b` # :​ ​  
- `a  <  b` # :​ ​  
- `a <=  b` # :​
- Comparing order for non natural comparing
- `number < atom < reference < function < port < pid < tuple < map < list < binary`
- Booleans operators: `a or b`, `a and b`, `not a`
- Relaxed Boolean operators, accepted any type: `a || b`, `a && b`, `!a`
- Arithmetic operators: `+`, `-`, `*`, `/`, `div`, `rem`
- Integer division yields a floating-point result. Use `div(a,b)` to get an integer. 
- `rem` is the _remainder_ operator. It is called as a function `rem(11, 3) => 2`
- Join operators: `binary1 <> binary2` works on strings too
- Variables are scoped inside the function
- _with_ create a new scope for variables that don't affect function's scope.
- If you use _<-_ instead of _=_ in a _with_ expression, it performs a match, but if it fails it returns the value that couldn’t be matched.
