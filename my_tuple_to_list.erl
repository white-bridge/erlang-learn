%%%-------------------------------------------------------------------
%%% @author zhanmei
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. 十二月 2018 12:56
%%%-------------------------------------------------------------------
-module(my_tuple_to_list).
-author("zhanmei").

%% API
-export([to_list_normal/1,to_list_my/1]).

to_list_normal(T) -> tuple_to_list(T).
to_list_my(T) -> for(T,1,size(T),fun(I,T)-> element(I,T) end ).

for(T,Max,Max,F) -> [F(Max,T)];
for(T,I,Max,F)   ->  [F(I,T)|for(T,I+1,Max,F)].
