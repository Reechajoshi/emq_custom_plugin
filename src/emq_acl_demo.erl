-module(emq_acl_demo).

-include_lib("emqttd/include/emqttd.hrl").

%% ACL callbacks

-export([init/1, check_acl/2, reload_acl/1, description/0]).

init(Opts) ->
	    {ok, Opts}.

check_acl({Client, PubSub, Topic}, Opts) ->
	    io:format("ACL Demo: ~p ~p ~p~n", [Client, PubSub, Topic]),
	        allow.

reload_acl(_Opts) ->
	    ok.

description() -> "ACL Module Demo".
