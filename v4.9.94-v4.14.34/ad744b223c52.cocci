//# pattern-1, witnesses: 12
@r0@
identifier i, fn;
@@
struct rtnl_link_ops i = {
    .changelink = fn,
};
@@
identifier data;
identifier dev;
identifier r0.fn;
identifier tb;
@@
- int fn(struct net_device * dev, struct nlattr ** tb, struct nlattr ** data)
+ int fn(struct net_device * dev, struct nlattr ** tb, struct nlattr ** data, struct netlink_ext_ack * extack)
 { ... }
