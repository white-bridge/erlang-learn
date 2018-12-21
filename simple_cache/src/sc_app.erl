%%%-------------------------------------------------------------------
%%% @author zhanmei
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. 十二月 2018 12:52
%%%-------------------------------------------------------------------
-module(sc_app).
-author("zhanmei").
-behaviour(application).

%% API
-export([start/2,stop/1]).

start(_StartType,_StartArgs) ->
	sc_store:init(),
	case sc_sup:start_link() of
		{ok,Pid}->
			{ok,Pid};
		Other ->
			{error,Other}
	end.

stop(_State) ->
	ok.