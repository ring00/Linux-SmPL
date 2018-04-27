//# pattern-2, witnesses: 2
@@
@@
- fib_flush_external(rule->fr_net);
//# pattern-3, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression ME4;
@@
- switchdev_fib_ipv4_del(E0, E1, E2, E3, ME4, tb->tb_id);
