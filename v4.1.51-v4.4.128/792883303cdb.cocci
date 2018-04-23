//# pattern-3, witnesses: 4
@@
@@
- ip6_local_out(skb)
+ ip6_local_out(skb->sk, skb)
