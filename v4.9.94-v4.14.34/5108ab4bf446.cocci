//# pattern-2, witnesses: 2
@@
expression E0;
typedef bool;
identifier nexthdr;
identifier skb;
@@
 bool ipv6_raw_deliver(struct sk_buff * skb, int nexthdr)
 {
     <...
- __raw_v6_lookup(net, E0, nexthdr, daddr, saddr, inet6_iif(skb))
+ __raw_v6_lookup(net, E0, nexthdr, daddr, saddr, inet6_iif(skb), inet6_sdif(skb))
     ...>
 }
