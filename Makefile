PROJECT = emq_plugin_abc
PROJECT_DESCRIPTION = emqttd abc plugin
PROJECT_VERSION = 1.0

BUILD_DEPS = emqttd
dep_emqttd = git https://github.com/emqtt/emqttd master

COVER = true

include erlang.mk
