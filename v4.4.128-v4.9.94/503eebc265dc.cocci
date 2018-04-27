//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_neigh_construct = fn,
};
@@
identifier neigh;
identifier r0.fn;
@@
- int fn(struct neighbour * neigh)
+ int fn(struct net_device * dev, struct neighbour * neigh)
 { ... }
