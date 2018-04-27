//# pattern-6, witnesses: 2
@@
identifier fn;
identifier ihl;
identifier ipl;
identifier skb;
identifier udplite;
@@
 int fn(struct sk_buff * skb, unsigned int ihl, unsigned int ipl, int udplite)
 {
     <...
- if (skb_is_gso(skb) && skb_shinfo(skb)->gso_type & SKB_GSO_UDP) {
- return 1;
- }
     ...>
 }
