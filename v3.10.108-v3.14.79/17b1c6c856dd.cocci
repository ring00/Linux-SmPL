//# pattern-10, witnesses: 2
@@
identifier s;
@@
 struct target_core_fabric_ops s = {
+    .aborted_task = tcm_qla2xxx_aborted_task,
 };
