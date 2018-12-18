%%%-------------------------------------------------------------------
%%% @author wangyaozhong
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. 十二月 2018 9:36
%%%-------------------------------------------------------------------
-module(clock).
-author("zhanmei").

%% API
-export([start/2,stop/0]).


start(Time,Fun) ->
  register(clock,spawn(fun() -> tick(Time,Fun) end)).

stop() ->
  clock ! stop.

tick(Time,Fun) ->
  receive
    stop ->
      void
  after Time ->
    Fun(),
    tick(Time,Fun)
  end.