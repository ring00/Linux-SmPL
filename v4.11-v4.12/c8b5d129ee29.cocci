//# pattern-1, witnesses: 17
@@
identifier s;
@@
 const struct net_device_ops s = {
+    .ndo_get_stats64 = usbnet_get_stats64,
 };
