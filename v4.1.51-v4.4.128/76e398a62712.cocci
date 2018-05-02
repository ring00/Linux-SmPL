//# pattern-6, witnesses: 2
@@
identifier s;
@@
 struct dsa_switch_driver s = {
-    .port_pvid_set = mv88e6xxx_port_pvid_set,
+    .port_vlan_prepare = mv88e6xxx_port_vlan_prepare,
 };
