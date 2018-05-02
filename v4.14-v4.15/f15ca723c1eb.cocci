//# pattern-5, witnesses: 4
@@
@@
- skb_dst(skb)->ops->update_pmtu(skb_dst(skb), NULL, skb, mtu)
+ skb_dst_update_pmtu(skb, mtu)
//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
expression V3;
@@
- skb_dst(E0)->ops->update_pmtu(skb_dst(E1), NULL, E2, V3)
+ skb_dst_update_pmtu(E1, V3)
//# pattern-3, witnesses: 2
@@
@@
- if (skb_dst(skb)) {
- skb_dst(skb)->ops->update_pmtu(skb_dst(skb), NULL, skb, mtu);
- }
+ skb_dst_update_pmtu(skb, mtu);
