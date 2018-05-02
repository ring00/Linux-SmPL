//# pattern-3, witnesses: 8
@@
identifier s;
@@
 const struct net_device_ops s = {
+    .ndo_neigh_construct = ax25_neigh_construct,
 };
