//# pattern-3, witnesses: 2
@@
identifier s;
@@
 struct ipv6_devconf s = {
+    .use_oif_addrs_only = 0,
 };
