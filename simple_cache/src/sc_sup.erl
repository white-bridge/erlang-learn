%%%-------------------------------------------------------------------
%%% @author zhanmei
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. 十二月 2018 12:57
%%%-------------------------------------------------------------------
-module(sc_sup).
-author("zhanmei").
-behaviour(supervisor).

%% API
-export([start_link/0,start_child/2,init/1]).
-define(SERVER,?MODULE).

start_link() ->
	supervisor:start_link({local,?SERVER},?MODULE,[]).

start_child(Value,LeaseTime) ->
	supervisor:start_child(?SERVER,[Value,LeaseTime]).

init([]) ->
	Element = {sc_element,{sc_element,start_link,[]},temporary,brutal_kill,worker,[sc_element]},
	Children = [Element],
	RestartStrategy = {simple_one_for_one,0,1},
	{ok,{RestartStrategy,Children}}.

