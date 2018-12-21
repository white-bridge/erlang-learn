%%%-------------------------------------------------------------------
%%% @author zhanmei
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 21. 十二月 2018 14:11
%%%-------------------------------------------------------------------
-module(sc_store).
-author("zhanmei").

%% API
-export([init/0,insert/2,lookup/1,delete/1]).

-define(TABLE_ID,?MODULE).

init() ->
	ets:new(?TABLE_ID,[public,named_table]),
	ok.

insert(Key,Pid) ->
	ets:insert(?TABLE_ID,{Key,Pid}).

lookup(Key) ->
	case ets:lookup(?TABLE_ID,Key) of
		[{Key,Pid}] -> {ok,Pid};
		[] -> {error,not_found}
	end.
delete(Pid) ->
	ets:match_delete(?TABLE_ID,{'_',Pid}).