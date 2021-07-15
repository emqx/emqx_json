%%%-------------------------------------------------------------------
%% @doc emqx_json public API
%% @end
%%%-------------------------------------------------------------------

-module(emqx_json_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    emqx_json_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
