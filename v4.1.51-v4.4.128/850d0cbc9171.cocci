//# pattern-1, witnesses: 2
@@
identifier s;
@@
 struct switchdev_obj_ipv4_fib s = {
-    .fi = fi,
 };
//# pattern-2, witnesses: 2
@@
@@
- fib4->fi
+ &fib4->fi
//# pattern-5, witnesses: 2
@@
expression E0;
@@
- fdb->addr = E0;
+ ether_addr_copy(fdb->addr, E0);
//# pattern-8, witnesses: 2
@@
identifier s;
@@
 struct switchdev_obj_port_fdb s = {
-    .addr = addr,
 };
