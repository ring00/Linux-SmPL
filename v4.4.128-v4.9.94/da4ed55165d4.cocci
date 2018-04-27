//# pattern-1, witnesses: 2
@@
identifier s;
@@
 struct switchdev_obj_ipv4_fib s = {
+    .fi = fi,
 };
//# pattern-2, witnesses: 2
@@
@@
- memcpy(&ipv4_fib.fi, fi, sizeof(unsigned long));
//# pattern-3, witnesses: 2
@@
@@
- &fib4->fi
+ fib4->fi
