%%%-------------------------------------------------------------------
%%% @author zhanmei
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. 十二月 2018 下午10:26
%%%-------------------------------------------------------------------
-module(shop2).
-author("zhanmei").

%% API
-export([total/1]).
-import(lists,[map/2,sum/1]).

total(L) -> sum(map(fun({What,N})->shop:cost(What)*N end,L)).