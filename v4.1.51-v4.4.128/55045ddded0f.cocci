//# pattern-2, witnesses: 2
@@
identifier s;
@@
 struct dsa_switch_driver s = {
-    .fdb_add = mv88e6xxx_port_fdb_add,
-    .fdb_del = mv88e6xxx_port_fdb_del,
-    .fdb_getnext = mv88e6xxx_port_fdb_getnext,
 };
