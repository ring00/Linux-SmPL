//# pattern-2, witnesses: 2
@@
identifier s;
@@
 struct dsa_switch_driver s = {
+    .port_fdb_prepare = mv88e6xxx_port_fdb_prepare,
 };
