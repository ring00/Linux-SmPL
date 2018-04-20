//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_bridge_getlink = fn,
};
@@
expression E0;
expression E1;
expression E2;
identifier dev;
identifier filter_mask;
identifier pid;
identifier r0.fn;
identifier seq;
identifier skb;
typedef u32;
@@
- int fn(struct sk_buff * skb, u32 pid, u32 seq, struct net_device * dev, u32 filter_mask)
+ int fn(struct sk_buff * skb, u32 pid, u32 seq, struct net_device * dev, u32 filter_mask, int nlflags)
 {
     <...
- ndo_dflt_bridge_getlink(skb, pid, seq, dev, E0, E1, E2)
+ ndo_dflt_bridge_getlink(skb, pid, seq, dev, E0, E1, E2, nlflags)
     ...>
 }
//# pattern-3, witnesses: 2
@r1@
identifier fn;
expression P0, P1, P2;
@@
rtnl_register(P0, P1, P2, fn)
@@
expression E0;
identifier cb;
identifier skb;
@@
 int rtnl_bridge_getlink(struct sk_buff * skb, struct netlink_callback * cb)
 {
     <...
- E0->ndo_bridge_getlink(skb, portid, seq, dev, filter_mask)
+ E0->ndo_bridge_getlink(skb, portid, seq, dev, filter_mask, NLM_F_MULTI)
     ...>
 }
