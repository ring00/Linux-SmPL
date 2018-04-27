//# pattern-1, witnesses: 2
@@
@@
- skb->reserved_tailroom = skb_end_offset(skb) - min(mtu, skb_end_offset(skb));
+ skb_tailroom_reserve(skb, mtu, tlen);
