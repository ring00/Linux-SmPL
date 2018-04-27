//# pattern-1, witnesses: 2
@@
identifier s;
@@
 struct proto s = {
+    .keepalive = tcp_set_keepalive,
 };
