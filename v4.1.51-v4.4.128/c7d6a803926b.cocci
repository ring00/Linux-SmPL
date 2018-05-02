//# pattern-1, witnesses: 2
@@
identifier s;
@@
 const struct target_core_fabric_ops s = {
-    . = 0,
-    . = 0,
-    . = 0,
-    . = 0,
-    .fabric_make_nodeacl = tcm_qla2xxx_make_nodeacl,
-    .fabric_drop_nodeacl = tcm_qla2xxx_drop_nodeacl,
+    .fabric_init_nodeacl = tcm_qla2xxx_init_nodeacl,
 };
