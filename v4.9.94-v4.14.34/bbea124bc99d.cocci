//# pattern-4, witnesses: 2
@@
identifier s;
@@
 struct ipv6_devconf s = {
+    .accept_ra_rt_info_min_plen = 0,
 };
