//# pattern-2, witnesses: 2
@@
identifier s;
@@
 const struct net_device_ops s = {
-    .ndo_gso_check = mlx4_en_gso_check,
+    .ndo_features_check = mlx4_en_features_check,
 };
