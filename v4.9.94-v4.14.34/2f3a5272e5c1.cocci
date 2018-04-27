//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression V4;
@@
- call_fib_entry_notifiers(net, FIB_EVENT_ENTRY_DEL, E0, E1, E2, E3, V4->fa_type, tb->tb_id, 0)
+ call_fib_entry_notifiers(net, FIB_EVENT_ENTRY_DEL, E0, E1, E2, E3, V4->fa_type, tb->tb_id)
