-module(converter).
-include("conv_info.hrl").
-export([rec_to_rub/1]).


rec_to_rub(#conv_info{type = usd,
			amount = Amount,
			commission = Commission})
			when is_integer(Amount), Amount > 0 ->
	io:format("Convert ~p to rub, amount ~p~n", [usd, Amount]),
	Converted = Amount * 75.5,
	CommissionValue = Converted * Commission,
	AfterCommission = Converted - CommissionValue,
	{ok, AfterCommission};

rec_to_rub(#conv_info{type = euro,
			amount = Amount,
			commission = Commission})
			when is_integer(Amount), Amount > 0 ->
	io:format("Convert ~p to rub, amount ~p~n", [euro, Amount]),
	Converted = Amount * 80,
	CommissionValue = Converted * Commission,
	AfterCommission = Converted - CommissionValue,
	{ok, AfterCommission};

rec_to_rub(#conv_info{type = lari,
			amount = Amount,
			commission = Commission})
			when is_integer(Amount), Amount > 0 ->
	io:format("Convert ~p to rub, amount ~p~n", [lari, Amount]),
	Converted = Amount * 29,
	CommissionValue = Converted * Commission,
	AfterCommission = Converted - CommissionValue,
	{ok, AfterCommission};

rec_to_rub(#conv_info{type = peso,
			amount = Amount,
			commission = Commission})
			when is_integer(Amount), Amount > 0 ->
	io:format("Convert ~p to rub, amount ~p~n", [peso, Amount]),
	Converted = Amount * 3,
	CommissionValue = Converted * Commission,
	AfterCommission = Converted - CommissionValue,
	{ok, AfterCommission};

rec_to_rub(#conv_info{type = krone,
			amount = Amount,
			commission = Commission})
			when is_integer(Amount), Amount > 0 ->
	io:format("Convert ~p to rub, amount ~p~n", [krone, Amount]),
	Converted = Amount * 10,
	CommissionValue = Converted * Commission,
	AfterCommission = Converted - CommissionValue,
	{ok, AfterCommission};


rec_to_rub(#conv_info{type = _Currency,
			amount = Amount,
			commission = _Commission})
			when not(is_integer(Amount)) ->
	io:format("~p - number is not integer~n", [Amount]),
	{error, badarg};

rec_to_rub(#conv_info{type = _Currency,
			amount = Amount,
			commission = _Commission})
			when not(Amount > 0) ->
	io:format("~p - number is less than 0~n", [Amount]),
	{error, badarg};

rec_to_rub(#conv_info{type = UnsupportedCurrency,
			amount = _,
			commission = _}) ->
	io:format("~p - convert is not supported~n", [UnsupportedCurrency]),
	{error, badarg};

rec_to_rub(Error) ->
	io:format("~p - bad args~n", [Error]),
	{error, badarg}.


