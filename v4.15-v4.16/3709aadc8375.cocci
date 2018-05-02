//# pattern-3, witnesses: 3
@r0@
identifier i, fn;
@@
struct dsa_switch_ops i = {
    .port_mdb_prepare = fn,
};
@@
identifier ds;
identifier mdb;
identifier port;
identifier r0.fn;
identifier trans;
@@
- int fn(struct dsa_switch * ds, int port, const struct switchdev_obj_port_mdb * mdb, struct switchdev_trans * trans)
+ int fn(struct dsa_switch * ds, int port, const struct switchdev_obj_port_mdb * mdb)
 { ... }
//# pattern-4, witnesses: 3
@r1@
identifier i, fn;
@@
struct dsa_switch_ops i = {
    .port_mdb_add = fn,
};
@@
identifier ds;
identifier mdb;
identifier port;
identifier r1.fn;
identifier trans;
@@
- void fn(struct dsa_switch * ds, int port, const struct switchdev_obj_port_mdb * mdb, struct switchdev_trans * trans)
+ void fn(struct dsa_switch * ds, int port, const struct switchdev_obj_port_mdb * mdb)
 { ... }
