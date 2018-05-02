//# pattern-1, witnesses: 6
@@
expression E1;
identifier PV0;
@@
- PV0->trans_ph = E1
+ trans.ph = E1
//# pattern-2, witnesses: 4
@r0@
identifier i, fn;
@@
struct switchdev_ops i = {
    .switchdev_port_attr_set = fn,
};
@@
identifier attr;
identifier dev;
identifier r0.fn;
identifier trans;
@@
 int fn(struct net_device * dev, struct switchdev_attr * attr, struct switchdev_trans * trans)
 {
     <...
- attr->trans_ph
+ trans->ph
     ...>
 }
//# pattern-6, witnesses: 4
@r1@
identifier i, fn;
@@
struct switchdev_ops i = {
    .switchdev_port_obj_add = fn,
};
@@
identifier dev;
identifier obj;
identifier trans;
@@
 int rocker_port_obj_add(struct net_device * dev, struct switchdev_obj * obj, struct switchdev_trans * trans)
 {
     <...
- obj->trans_ph
+ trans->ph
     ...>
 }
