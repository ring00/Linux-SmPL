//# pattern-1, witnesses: 6
@@
expression E0;
expression V1;
@@
- skb_cloned(skb) && !skb_clone_writable(skb, E0 + V1) && pskb_expand_head(skb, 0, 0, GFP_ATOMIC)
+ skb_try_make_writable(skb, E0 + V1)
//# pattern-2, witnesses: 3
@@
expression E0;
@@
- unlikely(skb_cloned(skb) && !skb_clone_writable(skb, offset + E0))
+ unlikely(skb_try_make_writable(skb, offset + E0))
