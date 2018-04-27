//# pattern-1, witnesses: 2
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
- int fn(struct net_device * dev, struct switchdev_attr * attr, struct switchdev_trans * trans)
+ int fn(struct net_device * dev, const struct switchdev_attr * attr, struct switchdev_trans * trans)
 { ... }
