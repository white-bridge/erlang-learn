%%%-------------------------------------------------------------------
%%% @author zhanmei
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. 十二月 2018 下午11:15
%%%-------------------------------------------------------------------
-module(thag).
-author("zhanmei").

%% API
-export([pythag/1]).

pythag(N) ->
  [{A,B,C} || A<-lists:seq(1,N),B<-lists:seq(1,N),C<-lists:seq(1,N),A+B+C =< N,A*A + B*B =:= C*C].