//# pattern-2, witnesses: 3
@@
expression E0;
@@
- E0->enabled_port_mask
+ dsa_user_ports(E0)
//# pattern-1, witnesses: 2
@@
@@
- ds->phys_mii_mask = ds->enabled_port_mask;
+ ds->phys_mii_mask |= dsa_user_ports(ds);
