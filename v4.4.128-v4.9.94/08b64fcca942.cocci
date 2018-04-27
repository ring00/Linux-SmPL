//# pattern-1, witnesses: 2
@@
identifier features;
typedef netdev_features_t;
identifier skb;
@@
 struct sk_buff * tcp_gso_segment(struct sk_buff * skb, netdev_features_t features)
 {
     <...
- if (skb->ip_summed != CHECKSUM_PARTIAL) {
- }
+ if (skb->ip_summed == CHECKSUM_PARTIAL) {
+ gso_reset_checksum(skb, ~th->check);
+ }
     ...>
 }
