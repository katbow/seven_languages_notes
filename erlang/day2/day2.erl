-module(day2).
-export([double_all/1]).
-export([keyword/2]).
-export([total/1]).

double_all([]) -> [];
double_all([First|Rest]) -> [First + First|double_all(Rest)].

% When given [{erlang, "functional"}, {ruby, "OO"}], write a function that accepts
% a keyword and returns the associated value for that keyword
keyword(List, Keyword) -> [Value || {Key, Value} <- List, Key == Keyword].

% Given a shopping list [{item, quantity, price}, ...], write a list comprehension
% that builds a list in the form [{item, total_price}, ...]
total(List) -> [{Item, Price * Quantity} || {Item, Quantity, Price} <- List].
