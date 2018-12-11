%%%-------------------------------------------------------------------
%%% @author zhanmei
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. 十一月 2018 下午10:52
%%%-------------------------------------------------------------------
-module(shop).
-author("zhanmei").

%% API
-export([cost/1]).

cost(oranges) ->      5;
cost(newspaper)->     8;
cost(apples)   ->     2;
cost(pears) ->        9;
cost(milk) ->         7.