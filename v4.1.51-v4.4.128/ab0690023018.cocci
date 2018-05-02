//# pattern-7, witnesses: 2
@r0@
identifier i, fn;
@@
struct switchdev_ops i = {
    .switchdev_port_obj_add = fn,
};
@@
identifier dev;
identifier obj;
identifier r0.fn;
identifier trans;
@@
- int fn(struct net_device * dev, struct switchdev_obj * obj, struct switchdev_trans * trans)
+ int fn(struct net_device * dev, enum switchdev_obj_id id, const void * obj, struct switchdev_trans * trans)
 { ... }
//# pattern-12, witnesses: 2
@@
@@
- struct switchdev_obj fib_obj = ;
+ struct switchdev_obj_ipv4_fib ipv4_fib = ipv4_fib;
//# pattern-23, witnesses: 2
@@
@@
- struct switchdev_obj vlan_obj = ;
+ struct switchdev_obj_vlan v = v;
//# pattern-31, witnesses: 2
@r1@
identifier fn;
expression P0, P1;
@@
switchdev_port_br_afspec(P0, P1, fn)
@@
identifier dev;
identifier obj;
@@
- int switchdev_port_obj_add(struct net_device * dev, struct switchdev_obj * obj)
+ int switchdev_port_obj_add(struct net_device * dev, enum switchdev_obj_id id, const void * obj)
 {
     <...
- __switchdev_port_obj_add(dev, obj, &trans)
+ __switchdev_port_obj_add(dev, id, obj, &trans)
     ...>
 }
//# pattern-34, witnesses: 2
@r2@
identifier i, fn;
@@
struct switchdev_ops i = {
    .switchdev_port_obj_del = fn,
};
@@
identifier dev;
identifier id;
identifier obj;
identifier r2.fn;
@@
 int fn(struct net_device * dev, enum switchdev_obj_id id, const void * obj)
 { ... }
