//# pattern-1, witnesses: 4
@@
identifier s;
@@
 const struct net_device_ops s = {
+    .ndo_neigh_construct = netdev_default_l2upper_neigh_construct,
+    .ndo_neigh_destroy = netdev_default_l2upper_neigh_destroy,
 };
