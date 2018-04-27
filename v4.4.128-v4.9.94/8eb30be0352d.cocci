//# pattern-2, witnesses: 2
@@
expression EC0;
identifier dev;
identifier fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct net_device * dev)
 {
     <...
- fl6.__fl_common.flowic_proto = EC0;
- err = ip6_tnl_xmit2(skb, dev, dsfield, &fl6, encap_limit, &mtu);
+ err = ip6_tnl_xmit(skb, dev, dsfield, &fl6, encap_limit, &mtu, EC0);
     ...>
 }
