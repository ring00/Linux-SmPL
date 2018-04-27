//# pattern-1, witnesses: 2
@@
identifier ds;
identifier parent;
@@
 int dsa_switch_setup_one(struct dsa_switch * ds, struct device * parent)
 {
     <...
- ds->tag_protocol
+ drv->tag_protocol
     ...>
 }
