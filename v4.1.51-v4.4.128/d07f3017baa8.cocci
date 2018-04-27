//# pattern-2, witnesses: 2
@@
identifier s;
@@
 struct ipv6_devconf s = {
+    .accept_ra_min_hop_limit = 1,
 };
