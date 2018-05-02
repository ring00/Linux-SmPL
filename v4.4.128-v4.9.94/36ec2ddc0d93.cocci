//# pattern-1, witnesses: 5
@@
expression F1;
identifier s;
@@
 struct target_core_fabric_ops s = {
-    .close_session = F1,
 };
