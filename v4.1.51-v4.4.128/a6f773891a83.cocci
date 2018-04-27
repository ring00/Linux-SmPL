//# pattern-3, witnesses: 2
@@
expression E1;
identifier PV0;
@@
- lowpan_header_compress(skb, PV0, ETH_P_IPV6, daddr, E1, skb->len)
+ lowpan_header_compress(skb, PV0, daddr, E1)
