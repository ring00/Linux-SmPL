//# pattern-1, witnesses: 3
@@
identifier s;
@@
 const struct net_device_ops s = {
-    .ndo_fdb_add = switchdev_port_fdb_add,
-    .ndo_fdb_del = switchdev_port_fdb_del,
-    .ndo_fdb_dump = switchdev_port_fdb_dump,
-    .ndo_bridge_setlink = switchdev_port_bridge_setlink,
-    .ndo_bridge_getlink = switchdev_port_bridge_getlink,
-    .ndo_bridge_dellink = switchdev_port_bridge_dellink,
 };
