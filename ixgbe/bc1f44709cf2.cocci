//# pattern-1, witnesses: 37
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_get_stats64 = fn,
};
@@
identifier dev;
identifier r0.fn;
identifier stats;
@@
- struct rtnl_link_stats64 * fn(struct net_device * dev, struct rtnl_link_stats64 * stats)
+ void fn(struct net_device * dev, struct rtnl_link_stats64 * stats)
 {
     <...
- return stats;
     ...>
 }
//# pattern-2, witnesses: 9
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
//# pattern-3, witnesses: 2
@r2@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_get_stats64 = fn,
};
@@
identifier net_dev;
identifier r2.fn;
identifier s;
@@
 void fn(struct net_device * net_dev, struct rtnl_link_stats64 * s)
 {
     <...
- return s;
     ...>
 }
