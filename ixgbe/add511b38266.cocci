//# pattern-1, witnesses: 2
@r0@
identifier fn;
expression P0, P1, P3;
@@
rtnl_register(P0, P1, fn, P3)
@@
expression V0;
identifier nlh;
identifier skb;
@@
 int rtnl_bridge_setlink(struct sk_buff * skb, struct nlmsghdr * nlh)
 {
     <...
- V0->netdev_ops->ndo_bridge_setlink(dev, nlh)
+ V0->netdev_ops->ndo_bridge_setlink(dev, nlh, flags)
     ...>
 }
//# pattern-3, witnesses: 2
@r1@
identifier fn;
expression P0, P1, P3;
@@
rtnl_register(P0, P1, fn, P3)
@@
expression V0;
identifier nlh;
identifier skb;
@@
 int rtnl_bridge_dellink(struct sk_buff * skb, struct nlmsghdr * nlh)
 {
     <...
- V0->netdev_ops->ndo_bridge_dellink(dev, nlh)
+ V0->netdev_ops->ndo_bridge_dellink(dev, nlh, flags)
     ...>
 }
//# pattern-4, witnesses: 2
@r2@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_bridge_setlink = fn,
};
@@
identifier dev;
identifier nlh;
identifier r2.fn;
typedef u16;
@@
- int fn(struct net_device * dev, struct nlmsghdr * nlh)
+ int fn(struct net_device * dev, struct nlmsghdr * nlh, u16 flags)
 { ... }
//# pattern-5, witnesses: 2
@r3@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_bridge_setlink = fn,
};
@@
identifier dev;
identifier flags;
identifier nlh;
identifier r3.fn;
typedef u16;
@@
 int fn(struct net_device * dev, struct nlmsghdr * nlh, u16 flags)
 { ... }
