//# pattern-3, witnesses: 4
@@
expression F1;
identifier s;
@@
 const struct net_device_ops s = {
-    .ndo_change_mtu = F1,
 };
