//# pattern-1, witnesses: 2
@@
identifier s;
@@
 const struct proto_ops s = {
+    .peek_len = tcp_peek_len,
+    .read_sock = tcp_read_sock,
 };
