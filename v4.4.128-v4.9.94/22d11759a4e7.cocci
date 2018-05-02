//# pattern-1, witnesses: 7
@@
expression F1;
identifier s;
@@
 struct target_core_fabric_ops s = {
-    .shutdown_session = F1,
 };
