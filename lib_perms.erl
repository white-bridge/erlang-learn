%%%-------------------------------------------------------------------
%%% @author zhanmei
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. 十二月 2018 上午6:52
%%%-------------------------------------------------------------------
-module(lib_perms).
-author("zhanmei").

%% API
-export([perms/1]).

perms([]) -> [[]];
perms(P) -> [[H|T] || H <- P , T <- perms(P--[H])].