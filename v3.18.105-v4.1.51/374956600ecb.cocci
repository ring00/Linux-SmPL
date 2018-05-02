//# pattern-5, witnesses: 2
@@
expression F1;
identifier s;
@@
 const struct iio_buffer_access_funcs s = {
-    .get_length = &F1,
 };
