%%%-------------------------------------------------------------------
%%% @author wangyaozhong
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. 十一月 2018 13:48
%%%-------------------------------------------------------------------
-module(world).
-author("zhanmei").

%% API
-export([start/0]).

start() ->
  Joe      =    spawn(person,init,["Joe"]),
  Dave     =    spawn(person,init,["Dave"]).
