//# pattern-1, witnesses: 3
@@
@@
- m->footer
+ m->footer
//# pattern-5, witnesses: 2
@@
identifier s;
@@
 const struct ceph_connection_operations s = {
+    .sign_message = sign_message,
+    .check_message_signature = check_message_signature,
 };
