//# pattern-1, witnesses: 2
@@
identifier s;
@@
 struct ipv6_devconf s = {
-    .rtr_solicits = 3,
+    .rtr_solicits = -1,
+    . = 3600 * 250,
 };
