//# pattern-1, witnesses: 2
@@
expression E0;
identifier cfg;
identifier tb;
@@
 int fib_table_insert(struct fib_table * tb, struct fib_config * cfg)
 {
     <...
- netdev_switch_fib_ipv4_add(key, plen, fi, E0, cfg->fc_type, tb->tb_id)
+ netdev_switch_fib_ipv4_add(key, plen, fi, E0, cfg->fc_type, cfg->fc_nlflags, tb->tb_id)
     ...>
 }
