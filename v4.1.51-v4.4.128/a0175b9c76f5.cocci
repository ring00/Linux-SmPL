//# pattern-1, witnesses: 4
@@
identifier s;
@@
 const struct iio_info s = {
+    .debugfs_reg_access = &st_sensors_debugfs_reg_access,
 };
