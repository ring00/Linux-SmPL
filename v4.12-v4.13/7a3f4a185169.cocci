//# pattern-1, witnesses: 14
@r0@
identifier i, fn;
@@
struct rtnl_link_ops i = {
    .newlink = fn,
};
@@
identifier data;
identifier dev;
identifier r0.fn;
identifier src_net;
identifier tb;
@@
- int fn(struct net * src_net, struct net_device * dev, struct nlattr ** tb, struct nlattr ** data)
+ int fn(struct net * src_net, struct net_device * dev, struct nlattr ** tb, struct nlattr ** data, struct netlink_ext_ack * extack)
 { ... }
