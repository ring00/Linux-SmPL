//# pattern-1, witnesses: 2
@@
expression E0;
identifier dev;
identifier filter_mask;
identifier fn;
identifier pid;
identifier seq;
identifier skb;
typedef u32;
@@
 int fn(struct sk_buff * skb, u32 pid, u32 seq, struct net_device * dev, u32 filter_mask)
 {
     <...
- ndo_dflt_bridge_getlink(skb, pid, seq, dev, E0)
+ ndo_dflt_bridge_getlink(skb, pid, seq, dev, E0, 0, 0)
     ...>
 }
