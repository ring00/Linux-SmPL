//# pattern-3, witnesses: 3
@@
@@
- struct dsa_chip_data * cd = ds->cd;
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- E0 = cd->port_dn[port]
+ E0 = ds->ports[port].dn
