//# pattern-1, witnesses: 2
@@
identifier s;
@@
 const struct iio_buffer_access_funcs s = {
+    .modes = 4 | 2,
 };
