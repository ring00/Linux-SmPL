//# pattern-2, witnesses: 2
@@
typedef __u8;
identifier dev;
identifier dsfield;
identifier encap_limit;
identifier fl6;
identifier fn;
identifier pmtu;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct net_device * dev, __u8 dsfield, struct flowi6 * fl6, int encap_limit, __u32 * pmtu)
 {
     <...
- ip6tunnel_xmit(skb, dev)
+ ip6tunnel_xmit(NULL, skb, dev)
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression E2;
expression E3;
expression E4;
expression E5;
expression ME1;
expression V0;
@@
- vxlan_xmit_skb(rt, skb, V0.saddr, ME1, E2, E3, df, src_port, dst_port, &md, E4, E5)
+ vxlan_xmit_skb(rt, sk, skb, V0.saddr, ME1, E2, E3, df, src_port, dst_port, &md, E4, E5)
