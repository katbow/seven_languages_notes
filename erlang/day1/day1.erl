-module(day1).
-export([count_ten/1]).
-export([success_failure/1]).

% Write a function that uses recursion to count to ten
count_ten(10) -> 10;
count_ten(N) -> count_ten(N + 1).

% Write a function that uses matching to print "success" or "error: Message"
success_failure(success) -> "success";
success_failure({error, Message}) -> "error: " ++ Message.

% To compile, write c(day1). in terminal.
% You will need to compile for each change you make

% Run functions with day1:function_name(input).
