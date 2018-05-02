//# pattern-2, witnesses: 9
@@
expression F1;
identifier s;
@@
 struct target_core_fabric_ops s = {
-    .tpg_get_default_depth = F1,
 };
