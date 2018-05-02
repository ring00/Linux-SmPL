//# pattern-11, witnesses: 2
@r0@
identifier i, fn;
@@
struct switchdev_ops i = {
    .switchdev_port_obj_dump = fn,
};
@@
identifier dev;
identifier obj;
identifier r0.fn;
@@
- int fn(struct net_device * dev, struct switchdev_obj * obj)
+ int fn(struct net_device * dev, enum switchdev_obj_id id, void * obj, int (*)(void *) cb)
 { ... }
