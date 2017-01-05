# Intro to Erlang

Erlang is a language which provides what many other languages can't -
scalable concurrency and reliability.

This is (at least in part) due to no threading - threads share resources, which
can lead to complex and buggy implementations. With threads, there needs to be
locks on resources so each thread can only access a resource at a given time and
in given circumstances, which leads to bottlenecks.

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
