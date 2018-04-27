//# pattern-5, witnesses: 2
@@
@@
- fib_table_delete(tb, &cfg)
+ fib_table_delete(net, tb, &cfg)
//# pattern-8, witnesses: 2
@@
identifier fn;
identifier net;
@@
 void fn(struct net * net)
 {
     <...
- fib_table_flush(tb)
+ fib_table_flush(net, tb)
     ...>
 }
//# pattern-10, witnesses: 2
@@
@@
- fib_table_insert(tb, &cfg)
+ fib_table_insert(net, tb, &cfg)
