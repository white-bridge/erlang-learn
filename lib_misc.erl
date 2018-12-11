%%%-------------------------------------------------------------------
%%% @author zhanmei
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. 十二月 2018 下午9:44
%%%-------------------------------------------------------------------
-module(lib_misc).
-author("zhanmei").

%% API
-export([for/3]).

for(Max,Max,F) -> [F(Max)];
for(I,Max,F)   -> [F(I)|for(I+1,Max,F)].
