%%%-------------------------------------------------------------------
%%% @author wangyaozhong
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. 十二月 2018 12:42
%%%-------------------------------------------------------------------
-module(geometry_new).
-author("wangyaozhong").

%% API
-export([area/1]).

area({rectangle,Width,Height}) ->  Width * Height;
area({square,Side}) -> Side * Side;
area({yuan,R}) -> math:pi() * R * R;
area({jiao,Side1,Side2}) -> Side1*Side2/2.
