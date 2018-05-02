//# pattern-6, witnesses: 2
@@
identifier s;
@@
 const struct net_device_ops s = {
+    .ndo_fdb_add = switchdev_port_fdb_add,
+    .ndo_fdb_del = switchdev_port_fdb_del,
+    .ndo_fdb_dump = switchdev_port_fdb_dump,
 };
