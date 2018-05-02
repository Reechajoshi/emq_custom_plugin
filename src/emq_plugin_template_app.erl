ok = emqttd_access_control:register_mod(auth, emq_auth_demo, []),
ok = emqttd_access_control:register_mod(acl, emq_acl_demo, []),

emqttd_ctl:register_cmd(cmd, {emq_cli_demo, cmd}, []).
