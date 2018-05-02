//# pattern-2, witnesses: 4
@@
expression E0;
expression E1;
@@
- virtio_net_hdr_from_skb(skb, E0, E1)
+ virtio_net_hdr_from_skb(skb, E0, E1, true)
