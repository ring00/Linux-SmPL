//# pattern-1, witnesses: 4
@@
identifier s;
@@
 struct rpc_xprt_ops s = {
+    .enable_swap = xs_enable_swap,
+    .disable_swap = xs_disable_swap,
 };
