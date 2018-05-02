%% Called when the plugin application start

load(Env) ->
	    emqttd:hook('client.connected', fun ?MODULE:on_client_connected/3, [Env]),
	    emqttd:hook('client.disconnected', fun ?MODULE:on_client_disconnected/3, [Env]),
	    emqttd:hook('client.subscribe', fun ?MODULE:on_client_subscribe/4, [Env]),
	    emqttd:hook('session.subscribed', fun ?MODULE:on_session_subscribed/4, [Env]),
	    emqttd:hook('client.unsubscribe', fun ?MODULE:on_client_unsubscribe/4, [Env]),
	    emqttd:hook('session.unsubscribed', fun ?MODULE:on_session_unsubscribed/4, [Env]),
	    emqttd:hook('message.publish', fun ?MODULE:on_message_publish/2, [Env]),
	    emqttd:hook('message.delivered', fun ?MODULE:on_message_delivered/4, [Env]),
	    emqttd:hook('message.acked', fun ?MODULE:on_message_acked/4, [Env]).
