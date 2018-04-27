//# pattern-3, witnesses: 6
@@
expression F1;
identifier s;
@@
 struct dsa_switch_ops s = {
-    .port_fdb_prepare = F1,
 };
