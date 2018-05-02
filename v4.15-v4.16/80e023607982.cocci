//# pattern-1, witnesses: 4
@r0@
identifier i, fn;
@@
struct dsa_switch_ops i = {
    .port_vlan_add = fn,
};
@@
identifier ds;
identifier port;
identifier r0.fn;
identifier trans;
identifier vlan;
@@
- void fn(struct dsa_switch * ds, int port, const struct switchdev_obj_port_vlan * vlan, struct switchdev_trans * trans)
+ void fn(struct dsa_switch * ds, int port, const struct switchdev_obj_port_vlan * vlan)
 { ... }
//# pattern-4, witnesses: 4
@r1@
identifier i, fn;
@@
struct dsa_switch_ops i = {
    .port_vlan_prepare = fn,
};
@@
identifier ds;
identifier port;
identifier r1.fn;
identifier trans;
identifier vlan;
@@
- int fn(struct dsa_switch * ds, int port, const struct switchdev_obj_port_vlan * vlan, struct switchdev_trans * trans)
+ int fn(struct dsa_switch * ds, int port, const struct switchdev_obj_port_vlan * vlan)
 { ... }
