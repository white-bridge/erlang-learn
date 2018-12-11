%%%-------------------------------------------------------------------
%%% @author wangyaozhong
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. 十一月 2018 13:52
%%%-------------------------------------------------------------------
-module(afile_server).
-author("zhanmei").

%% API
-export([start/1,loop/1]).

start(Dir) -> spawn(afile_server,loop,[Dir]).


loop(Dir) ->
     receive
       {Client,list_dir}->
         Client ! {self(), file:list_dir(Dir)};
       {Client,{get_file,File}}->
         Full = filename:join(Dir,File),
         Client ! {self(),file:read_file(Full)}
     end,
      loop(Dir).