//# pattern-2, witnesses: 3
@@
identifier s;
@@
 struct rpc_xprt_ops s = {
+    .inject_disconnect = xs_inject_disconnect,
 };
