//# pattern-20, witnesses: 3
@@
identifier s;
@@
 struct switchdev_obj_port_fdb s = {
 };
//# pattern-10, witnesses: 2
@@
identifier s;
@@
 struct switchdev_obj_ipv4_fib s = {
 };
//# pattern-19, witnesses: 2
@r0@
identifier fn;
expression P0, P1;
@@
switchdev_port_br_afspec(P0, P1, fn)
@@
identifier dev;
identifier id;
identifier obj;
identifier r0.fn;
@@
- int fn(struct net_device * dev, enum switchdev_obj_id id, const void * obj)
+ int fn(struct net_device * dev, enum switchdev_obj_id id, const struct switchdev_obj * obj)
 { ... }
//# pattern-29, witnesses: 2
@@
identifier s;
@@
 struct switchdev_obj_port_vlan s = {
 };
