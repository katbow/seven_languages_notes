# Erlang

## Erlang Basic Info
Erlang is a language which provides what many other languages can't -
scalable concurrency and reliability.

This is (at least in part) due to no threading - threads share resources, which
can lead to complex and buggy implementations. With threads, there needs to be
locks on resources so each thread can only access a resource at a given time and
in given circumstances, which leads to bottlenecks.

Because Erlang is a **functional** language, this means that:
* Programs are built out of functions with **no objects** anywhere
* Those functions will (usually) return the same values given the same inputs
* Functions won't (usually) have side effects/won't modify the program state
* Can only assign any variable once

## Limitations

The creator of Erlang has said that if the language was created all over again,
they would give more thought to how things fit together
(in large projects or with lots of code), how to manage versions, how things can
be found, and how things evolve.

## Foundational principles in Erlang from other languages

* code blocks from Ruby
* actors from IO
* pattern matching from Prolog
* distributed message passing from Scala

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
