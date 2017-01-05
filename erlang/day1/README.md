# Covering the basics

Because Erlang is a **functional** language, this means that:
* Programs are built out of functions with **no objects** anywhere
* Those functions will (usually) return the same values given the same inputs
* Functions won't (usually) have side effects/won't modify the program state
* Can only assign any variable once

## Syntax Notes

* Statements must end with "."
  * `Atom = 1.`
  * `Atom = 1` // will not work until a "." is put on the next line
* Some type coercion, but not everything
  * `4 + "4"` // error
* Variables must start with a capital letter
  * `Var = 2.` // ok
  * `var = 2.` // error
* Cannot change Variables
  * `Test = 1.` // ok
  * `Test = 2.` // error if Test is already defined as 1 as above.
* Atoms start with lowercase letters - this is the most primitive data element
  * `red.`
* .erl filetypes have a module (must match the filename), export
(exports functions with number of parameters each takes, called the arity), and
the function definition
* compile with `c(module_name).` and run with `module_name:function_name(params).`
* After it is compiled there will be a .beam file

## Pattern matching

#### Tuple Pattern Matching

If you define a person as:

```erl
Person = {person, {name, "Katherine Bowler"}, {Profession, "Being awesome"}}.
```

We can assign each of the `name` and `profession` to the variables `Name` and
`Profession`. We can do this with pattern matching:

```erl
{person, {name, Name}, {profession, Profession}} = Person.
```

Then if we want to look at the variables `Name` or `Profession` it will return
the correct values from the tuple.

```erl
1> Name.
"Katherine Bowler"
2> Profession.
"Being Awesome"
```

#### List Pattern matching

A list has a head and a tail, with the head being the first element and the tail
being the rest of the list.

```erl
3> [Head | Tail] = [1, 2, 3, 4].
[1, 2, 3, 4]
4> Head.
1
5> Tail.
[2, 3, 4]
```

The tail can also be split into its own head/tail split.

```erl
6> [One, Two|Rest] = [1, 2, 3, 4].
[1, 2, 3, 4]
7> One.
1
8> Two.
2
9> Rest.
[3, 4]
```
