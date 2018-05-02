//# pattern-2, witnesses: 4
@@
expression list listE0;
@@
- netdev_switch_fib_ipv4_del(listE0)
+ switchdev_fib_ipv4_del(listE0)
//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- netdev_switch_parent_id_get(listE0)
+ switchdev_parent_id_get(listE0)
//# pattern-4, witnesses: 2
@@
expression list listE0;
@@
- netdev_switch_fib_ipv4_abort(listE0)
+ switchdev_fib_ipv4_abort(listE0)
//# pattern-5, witnesses: 2
@@
expression list listE0;
@@
- netdev_switch_fib_ipv4_add(listE0)
+ switchdev_fib_ipv4_add(listE0)
//# pattern-7, witnesses: 2
@@
expression EC0;
@@
- call_netdev_switch_notifiers(EC0, lw->dev, &info.info)
+ call_switchdev_notifiers(EC0, lw->dev, &info.info)
//# pattern-9, witnesses: 2
@@
identifier s;
@@
 const struct net_device_ops s = {
-    .ndo_bridge_setlink = ndo_dflt_netdev_switch_port_bridge_setlink,
-    .ndo_bridge_dellink = ndo_dflt_netdev_switch_port_bridge_dellink,
+    .ndo_bridge_setlink = ndo_dflt_switchdev_port_bridge_setlink,
+    .ndo_bridge_dellink = ndo_dflt_switchdev_port_bridge_dellink,
 };
//# pattern-10, witnesses: 2
@@
@@
- unregister_netdev_switch_notifier(&br_netdev_switch_notifier)
+ unregister_switchdev_notifier(&br_switchdev_notifier)
