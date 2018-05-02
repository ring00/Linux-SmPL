//# pattern-1, witnesses: 3
@@
expression E0;
@@
- netif_needs_gso(dev, skb, E0)
+ netif_needs_gso(skb, E0)
