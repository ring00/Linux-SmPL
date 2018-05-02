//# pattern-18, witnesses: 2
@@
@@
- vxlan_fdb_delete_default(vxlan)
+ vxlan_fdb_delete_default(vxlan, vxlan->cfg.vni)
