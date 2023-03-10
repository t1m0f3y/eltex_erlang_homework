-module(converter).

-export([to_rub/1]).


to_rub({usd, Amount}) when is_integer(Amount), Amount > 0 ->
	io:format("Convert ~p to rub, amount ~p~n", [usd, Amount]),
	Converted = Amount * 75.5,
	{ok, Converted};

to_rub({euro, Amount}) when is_integer(Amount), Amount > 0 ->
	io:format("Convert ~p to rub, amount ~p~n", [euro, Amount]),
	Converted = Amount * 80,
	{ok, Converted};

to_rub({lari, Amount}) when is_integer(Amount), Amount > 0 ->
	io:format("Convert ~p to rub, amount ~p~n", [lari, Amount]),
	Converted = Amount * 29,
	{ok, Converted};

to_rub({peso, Amount}) when is_integer(Amount), Amount > 0 ->
	io:format("Convert ~p to rub, amount ~p~n", [peso, Amount]),
	Converted = Amount * 3,
	{ok, Converted};

to_rub({krone, Amount}) when is_integer(Amount), Amount > 0 ->
	io:format("Convert ~p to rub, amount ~p~n", [krone, Amount]),
	Converted = Amount * 10,
	{ok, Converted};


to_rub({_, Amount}) when not(is_integer(Amount)) ->
	io:format("~p - number is not integer~n", [Amount]),
	{error, badarg};

to_rub({_, Amount}) when not(Amount > 0) ->
	io:format("~p - number is less than 0~n", [Amount]),
	{error, badarg};

to_rub({Wrong, Amount}) when is_integer(Amount), Amount > 0 ->
	io:format("~p - convert is not supported~n", [Wrong]),
	{error, badarg};

to_rub(Error) ->
	io:format("~p - bad args~n", [Error]),
	{error, badarg}.
