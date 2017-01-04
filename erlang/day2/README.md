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
// TODO
