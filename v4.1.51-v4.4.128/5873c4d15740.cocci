//# pattern-1, witnesses: 3
@@
expression V1;
identifier s;
@@
 const struct target_backend_ops s = {
-    .tb_dev_attrib_attrs = V1,
+    .tb_dev_attrib_attrs = sbc_attrib_attrs,
 };
//# pattern-2, witnesses: 2
@@
expression V1;
identifier s;
@@
 const struct target_backend_ops s = {
-    .tb_dev_attrib_attrs = V1,
+    .tb_dev_attrib_attrs = passthrough_attrib_attrs,
 };
