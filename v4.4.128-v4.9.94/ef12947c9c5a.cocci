//# pattern-1, witnesses: 2
@@
@@
- static_key_slow_inc(&memcg_sockets_enabled_key)
+ static_branch_inc
//# pattern-3, witnesses: 2
@@
@@
- static_key_slow_dec(&memcg_sockets_enabled_key)
+ static_branch_dec
