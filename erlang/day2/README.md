# Working with Lists

Functional languages are very capable of quickly manipulating data. The day 2
chapter goes through the various functions that can be used in Erlang to
accomplish this.

## Case & If Statements

Case and If statements are useful, however you can get much more out of higher-order
functions and pattern matching.

* **Case** statements are common for interpreting which message to process.
**Ifs** are less prevalent
* Syntactic **wart** in **cases** (*gross*): all but the last case clause end in ";"
* **Ifs** must have a match, or there is an error. *Could* have the last guard
set to `true` to act as an else

// TODO: Add example of each

## Applying Functions to Lists

```erl
lists:foreach(function, List).
```
* returns "`ok`"

```erl
lists:map(function, List).
```
* applies function to each list element and builds a new list with the results
* Map can be defined:
 * ```erl
    map(F, [H | T]) -> [F(H) | map(F, T)];
    map(F, []) -> [].
  ```
  where F is the function, H is the head of the list (or first element only),
  and T is the tail (or rest of the list). The function is applied to the first
  element, and the tail is put through the map again in the same way until there
  is an empty list.

```erl
lists:filter(function, List).
```
* filters lists with a boolean
* function should return true or false for each element and return a list of
values that are true

```erl
lists:all(function, List).
```
* returns true if all the elements in the list satisfy the filter, or false if
there are some that don't match
* always returns true for `lists:all(function, [])`

```erl
lists:any(function, List).
```
* returns true is at least one element returns true for the filter
* always returns false for `lists:any(function, [])`

#### Other functions
`lists:takewhile(function, List).`
`lists:dropwhile(function, List).`
`lists:fold(function, List).` - seems similar to `reduce` in JS. Returns a
single value from all elements (e.g. adds them all together)

## Advanced List Concepts

#### List Construction

In Erlang lists are built without mutable state (because it is functional!).
Instead, you return a new list by adding items to a list from the head. It uses
the [H|T] construct from lists. Take a look at the `double_all` function in
day2.erl If you run the function with `[1, 2, 3]` it will return `[2, 4, 6]`.

#### List Comprehension

`map` is one of the most important functions in any functional language because
it can be used to manipulate lists/data. Erlang takes this a step further with
list comprehensions.

* A list comprehension takes the form of `[Expression || Clause1, Clause2, ..., ClauseN]`
* List comprehensions can have an arbitrary number of clauses
* The clauses can either be generators(add to list) or filters(remove from list)
* A *generator* matches a pattern on the left to elements of a list on the right
* A *filter* can be a boolean expression or function returning a boolean

This list comprehension includes both a filter and generator clause.

```erl
[X || X <- [1, 2, 3, 4], X < 4, X > 1].
[2, 3]
```
The first clause is a **generator** which takes X as each element from [1, 2, 3, 4].
The second & third clauses are **filters** which says that X is only taken when
it is less than 4 or greater than 1.
