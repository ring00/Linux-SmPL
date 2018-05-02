//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier attr;
identifier dev;
@@
 int switchdev_port_attr_set(struct net_device * dev, struct switchdev_attr * attr)
 {
     <...
- __switchdev_port_attr_set(dev, attr)
+ __switchdev_port_attr_set(dev, attr, &trans)
     ...>
 }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct switchdev_ops i = {
    .switchdev_port_attr_set = fn,
};
@@
identifier attr;
identifier dev;
identifier r1.fn;
@@
- int fn(struct net_device * dev, struct switchdev_attr * attr)
+ int fn(struct net_device * dev, struct switchdev_attr * attr, struct switchdev_trans * trans)
 { ... }
//# pattern-6, witnesses: 2
@r2@
identifier i, fn;
@@
struct switchdev_ops i = {
    .switchdev_port_obj_add = fn,
};
@@
identifier dev;
identifier obj;
identifier r2.fn;
@@
- int fn(struct net_device * dev, struct switchdev_obj * obj)
+ int fn(struct net_device * dev, struct switchdev_obj * obj, struct switchdev_trans * trans)
 { ... }
//# pattern-9, witnesses: 2
@r3@
identifier fn;
expression P0, P1;
@@
switchdev_port_br_afspec(P0, P1, fn)
@@
identifier dev;
identifier obj;
@@
 int switchdev_port_obj_add(struct net_device * dev, struct switchdev_obj * obj)
 {
     <...
- __switchdev_port_obj_add(dev, obj)
+ __switchdev_port_obj_add(dev, obj, &trans)
     ...>
 }
