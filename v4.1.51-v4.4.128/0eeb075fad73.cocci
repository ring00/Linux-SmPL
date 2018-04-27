//# pattern-1, witnesses: 7
@@
expression E0;
expression E1;
@@
- fib_lookup(E0, E1, &res)
+ fib_lookup(E0, E1, &res, 0)
//# pattern-4, witnesses: 3
@@
expression E0;
@@
- fib_lookup(net, E0, &res)
+ fib_lookup(net, E0, &res, FIB_LOOKUP_IGNORE_LINKSTATE)
