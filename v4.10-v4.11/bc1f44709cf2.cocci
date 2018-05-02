//# pattern-1, witnesses: 15
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_get_stats64 = fn,
};
@@
identifier netdev;
identifier r0.fn;
identifier s;
@@
- struct rtnl_link_stats64 * fn(struct net_device * netdev, struct rtnl_link_stats64 * s)
+ void fn(struct net_device * netdev, struct rtnl_link_stats64 * s)
 {
     <...
- return s;
     ...>
 }
//# pattern-2, witnesses: 6
@r1@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_get_stats64 = fn,
};
@@
expression E0;
identifier dev;
identifier r1.fn;
identifier stats;
@@
 void fn(struct net_device * dev, struct rtnl_link_stats64 * stats)
 {
     <...
- return E0;
+ return;
     ...>
 }
