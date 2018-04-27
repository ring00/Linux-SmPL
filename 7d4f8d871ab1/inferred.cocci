//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_bridge_getlink = fn,
};
@@
expression E0;
identifier dev;
identifier filter_mask;
identifier nlflags;
identifier pid;
identifier r0.fn;
identifier seq;
identifier skb;
typedef u32;
@@
 int fn(struct sk_buff * skb, u32 pid, u32 seq, struct net_device * dev, u32 filter_mask, int nlflags)
 {
     <...
- ndo_dflt_bridge_getlink(skb, pid, seq, dev, E0, 0, 0, nlflags)
+ ndo_dflt_bridge_getlink(skb, pid, seq, dev, E0, 0, 0, nlflags, filter_mask, NULL)
     ...>
 }
