//# pattern-1, witnesses: 2
@@
expression E0;
@@
- dev->netdev_ops->ndo_setup_tc(dev, E0)
+ dev->netdev_ops->ndo_setup_tc(dev, sch->handle, E0)
//# pattern-2, witnesses: 2
@@
identifier s;
@@
 const struct net_device_ops s = {
-    .ndo_setup_tc = mlx4_en_setup_tc,
+    .ndo_setup_tc = __mlx4_en_setup_tc,
 };
//# pattern-6, witnesses: 2
@@
identifier s;
@@
 const struct net_device_ops s = {
-    .ndo_setup_tc = i40e_setup_tc,
+    .ndo_setup_tc = __i40e_setup_tc,
 };
