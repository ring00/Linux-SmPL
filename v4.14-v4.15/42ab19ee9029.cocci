//# pattern-7, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
@@
- netdev_master_upper_dev_link(E0, E1, NULL, E2)
+ netdev_master_upper_dev_link(E0, E1, NULL, E2, NULL)
//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct rtnl_link_ops i = {
    .newlink = fn,
};
@@
identifier data;
identifier dev;
identifier extack;
identifier r0.fn;
identifier src_net;
identifier tb;
@@
 int fn(struct net * src_net, struct net_device * dev, struct nlattr ** tb, struct nlattr ** data, struct netlink_ext_ack * extack)
 {
     <...
- macvlan_common_newlink(src_net, dev, tb, data)
+ macvlan_common_newlink(src_net, dev, tb, data, extack)
     ...>
 }
//# pattern-6, witnesses: 2
@@
expression E1;
identifier PV0;
@@
- netdev_upper_dev_link(PV0, E1)
+ netdev_upper_dev_link(PV0, E1, NULL)
//# pattern-14, witnesses: 2
@r1@
identifier i, fn;
@@
struct rtnl_link_ops i = {
    .newlink = fn,
};
@@
expression V0;
identifier data;
identifier dev;
identifier extack;
identifier net;
identifier r1.fn;
identifier tb;
@@
 int fn(struct net * net, struct net_device * dev, struct nlattr ** tb, struct nlattr ** data, struct netlink_ext_ack * extack)
 {
     <...
- netdev_upper_dev_link(V0, dev)
+ netdev_upper_dev_link(V0, dev, extack)
     ...>
 }
