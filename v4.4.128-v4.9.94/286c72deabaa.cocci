//# pattern-2, witnesses: 4
@@
identifier s;
@@
 struct proto s = {
-    .disconnect = udp_disconnect,
+    .disconnect = __udp_disconnect,
 };
//# pattern-3, witnesses: 3
@@
expression list listE0;
@@
- udp_disconnect(listE0)
+ __udp_disconnect(listE0)
