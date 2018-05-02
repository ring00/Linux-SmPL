//# pattern-1, witnesses: 3
@@
identifier cb;
identifier ds;
identifier fn;
identifier port;
identifier vlan;
@@
- int fn(struct dsa_switch * ds, int port, struct switchdev_obj_port_vlan * vlan, int (*)(struct switchdev_obj *) cb)
+ int fn(struct dsa_switch * ds, int port, struct switchdev_obj_port_vlan * vlan, switchdev_obj_dump_cb_t * cb)
 { ... }
//# pattern-2, witnesses: 2
@@
identifier cb;
identifier ds;
identifier fdb;
identifier fn;
identifier port;
@@
- int fn(struct dsa_switch * ds, int port, struct switchdev_obj_port_fdb * fdb, int (*)(struct switchdev_obj *) cb)
+ int fn(struct dsa_switch * ds, int port, struct switchdev_obj_port_fdb * fdb, switchdev_obj_dump_cb_t * cb)
 { ... }
//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct dsa_switch_ops i = {
    .port_fdb_dump = fn,
};
@@
identifier cb;
identifier ds;
identifier fdb;
identifier port;
identifier r0.fn;
@@
 int fn(struct dsa_switch * ds, int port, struct switchdev_obj_port_fdb * fdb, switchdev_obj_dump_cb_t * cb)
 { ... }
