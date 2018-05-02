//# pattern-2, witnesses: 7
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_change_mtu = fn,
};
@@
identifier netdev;
identifier new_mtu;
identifier r0.fn;
@@
 int fn(struct net_device * netdev, int new_mtu)
 { ... }
//# pattern-1, witnesses: 2
@@
expression BO0;
@@
- if (BO0) {
- return -EINVAL;
- }
