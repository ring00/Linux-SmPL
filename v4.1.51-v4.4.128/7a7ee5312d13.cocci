//# pattern-1, witnesses: 2
@@
@@
- fib4->dst
+ htonl(fib4->dst)
//# pattern-2, witnesses: 2
@@
identifier s;
@@
 struct switchdev_obj_ipv4_fib s = {
-    .dst = htonl,
 };
