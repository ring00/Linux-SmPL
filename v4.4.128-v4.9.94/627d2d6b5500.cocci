//# pattern-3, witnesses: 2
@@
identifier s;
@@
 const struct proto_ops s = {
+    .set_peek_off = sk_set_peek_off,
 };
