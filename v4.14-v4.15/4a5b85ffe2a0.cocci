//# pattern-1, witnesses: 4
@@
identifier ds;
identifier fn;
@@
 int fn(struct dsa_switch * ds)
 {
     <...
- 1 << port & ds->enabled_port_mask
+ dsa_is_user_port(ds, port)
     ...>
 }
//# pattern-2, witnesses: 4
@@
@@
- ds->enabled_port_mask & BIT(i)
+ dsa_is_user_port(ds, i)
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- ds->enabled_port_mask & 1 << E0
+ dsa_is_user_port(ds, E0)
