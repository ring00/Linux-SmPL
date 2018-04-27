//# pattern-2, witnesses: 2
@@
expression F0;
expression V1;
identifier hash;
identifier iph;
identifier skb;
@@
 int raw_v4_input(struct sk_buff * skb, const struct iphdr * iph, int hash)
 {
     <...
- __raw_v4_lookup(net, F0(V1), iph->protocol, iph->saddr, iph->daddr, skb->dev->ifindex)
+ __raw_v4_lookup(net, F0(V1), iph->protocol, iph->saddr, iph->daddr, skb->dev->ifindex, sdif)
     ...>
 }
