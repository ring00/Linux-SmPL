//# pattern-2, witnesses: 3
@@
expression E1;
identifier s;
@@
 const struct target_core_fabric_ops s = {
-    .put_session = E1,
 };
