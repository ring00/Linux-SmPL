//# pattern-1, witnesses: 4
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_add_slave = fn,
};
@@
identifier dev;
identifier r0.fn;
identifier slave_dev;
@@
- int fn(struct net_device * dev, struct net_device * slave_dev)
+ int fn(struct net_device * dev, struct net_device * slave_dev, struct netlink_ext_ack * extack)
 { ... }
//# pattern-2, witnesses: 2
@@
expression E0;
expression V1;
@@
- bond_enslave(E0, V1)
+ bond_enslave(E0, V1, NULL)
//# pattern-3, witnesses: 2
@@
@@
- do_set_master(dev, nla_get_u32(tb[IFLA_MASTER]))
+ do_set_master(dev, nla_get_u32(tb[IFLA_MASTER]), extack)
