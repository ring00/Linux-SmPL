//# pattern-2, witnesses: 3
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_get_phys_port_id = fn,
};
@@
identifier netdev;
identifier ppid;
identifier r0.fn;
@@
- int fn(struct net_device * netdev, struct netdev_phys_port_id * ppid)
+ int fn(struct net_device * netdev, struct netdev_phys_item_id * ppid)
 { ... }
//# pattern-1, witnesses: 2
@@
identifier dev;
identifier fn;
identifier ppid;
@@
 int fn(struct net_device * dev, struct netdev_phys_item_id * ppid)
 { ... }
