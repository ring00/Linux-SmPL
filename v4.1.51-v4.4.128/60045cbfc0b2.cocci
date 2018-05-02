//# pattern-1, witnesses: 2
@@
identifier ds;
identifier port;
@@
 int mv88e6xxx_setup_port(struct dsa_switch * ds, int port)
 {
     <...
- ds->dsa_port_mask & 1 << port
+ dsa_is_dsa_port(ds, port)
     ...>
 }
