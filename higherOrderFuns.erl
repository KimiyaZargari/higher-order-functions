%%----------------------------------------------------------------------
%% #0.    BASIC INFORMATION
%%----------------------------------------------------------------------
%% File:       ...
%% Author       : ...
%% Description  : ...
%% 
%% Modules used : ...
%% 
%%----------------------------------------------------------------------

%% @doc Describe the functionality of this module.
%%
-module(higherOrderFuns).
-export([map/2, incr/1, decr/1, filter/2, isEven/1, isOdd/1, fold/3, max/2, min/2, sum/2]).

map(_, []) ->[];
map(F, [H|T])-> [F(H)|map(F, T)].

incr(X) -> X + 1.
decr(X) -> X - 1.

filter(F, L) -> lists: reverse(filter(F, L,[])).
filter(_,[], ACC) -> ACC;
filter(F, [H|T], ACC) ->
	case F(H) of
		true -> filter (F, T, [H|ACC]);
		false -> filter(F, T, ACC)
	end.

isEven(X) when X rem 2 == 0 ->
	true;
isEven(_) -> 
	false.

isOdd(X) -> true xor isEven(X).

fold(_, Val,[]) -> Val;
fold(F, Val, [H|T])-> fold(F, F(Val, H), T).

max(X, Y)->
	case X> Y of
		true -> X;
		false -> Y
	end.
min(X, Y) -> 
	case X< Y of
		true -> X;
		false -> Y
	end.

sum(X, Y) -> X + Y.

	


	