//# pattern-3, witnesses: 2
@@
identifier s;
@@
 struct ipv6_devconf s = {
+    .ignore_routes_with_linkdown = 0,
 };
