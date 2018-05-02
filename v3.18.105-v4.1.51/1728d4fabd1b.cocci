//# pattern-1, witnesses: 5
@@
identifier s;
@@
 struct rtnl_link_ops s = {
+    .get_link_net = ip_tunnel_get_link_net,
 };
//# pattern-2, witnesses: 3
@@
identifier s;
@@
 struct rtnl_link_ops s = {
+    .get_link_net = ip6_tnl_get_link_net,
 };
