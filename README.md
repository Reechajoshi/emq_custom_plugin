
emq-custom-plugin
===================

This is a plugin which emits Client ID on connection to EMQTT Broker.

Enabling Plugin
-------------

```
./bin/emqttd_ctl plugins load emq_custom_plugin .
./bin/emqttd_ctl plugins unload emq_custom_plugin .
./bin/emqttd_ctl plugins reload emq_custom_plugin .
./bin/emqttd_ctl plugins list .
```



Testing
-------------

Plugin will emitt Client id on System Topic 
$SYS/brokers/<node_name>/client_id

