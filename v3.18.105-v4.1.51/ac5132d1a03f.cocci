//# pattern-2, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
@@
- vxlan_find_vni(E0, vni, E1, E2)
+ vxlan_find_vni(E0, vni, E1, E2, vxlan->flags)
