//# pattern-1, witnesses: 4
@@
expression E0;
@@
- E0->port_stp_update
+ E0->port_stp_state_set
//# pattern-5, witnesses: 2
@@
identifier s;
@@
 struct dsa_switch_driver s = {
-    .port_stp_update = mv88e6xxx_port_stp_update,
+    .port_stp_state_set = mv88e6xxx_port_stp_state_set,
 };
