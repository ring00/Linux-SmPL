//# pattern-3, witnesses: 2
@@
identifier s;
@@
 struct dsa_switch_driver s = {
 };
//# pattern-7, witnesses: 2
@@
expression E0;
@@
- E0->fdb_add
+ E0->port_fdb_add
//# pattern-8, witnesses: 2
@@
expression E0;
@@
- E0->fdb_del
+ E0->port_fdb_del
