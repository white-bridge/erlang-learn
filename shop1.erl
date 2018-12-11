%%%-------------------------------------------------------------------
%%% @author zhanmei
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. 十二月 2018 下午9:03
%%%-------------------------------------------------------------------
-module(shop1).
-author("zhanmei").

%% API
-export([total/1]).

total([{What,N}|T]) -> shop:cost(What)*N + total(T);
total([]) -> 0.

