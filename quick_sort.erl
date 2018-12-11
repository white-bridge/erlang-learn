%%%-------------------------------------------------------------------
%%% @author zhanmei
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. 十二月 2018 下午11:07
%%%-------------------------------------------------------------------
-module(quick_sort).
-author("zhanmei").

%% API
-export([sort/1]).

sort([]) -> [];
sort([Point|T]) ->
  sort([X || X <- T,X < Point])
  ++ [Point] ++
  sort([X || X <- T,X >= Point]).