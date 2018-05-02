//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct rtnl_link_ops i = {
    .newlink = fn,
};
@@
expression ME0;
identifier data;
identifier dev;
identifier r0.fn;
identifier src_net;
identifier tb;
@@
 int fn(struct net * src_net, struct net_device * dev, struct nlattr ** tb, struct nlattr ** data)
 {
     <...
- dev_net_set(ME0, src_net);
     ...>
 }
