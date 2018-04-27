//# pattern-1, witnesses: 2
@@
identifier fn;
identifier priv;
identifier skb;
identifier state;
@@
 unsigned int fn(void * priv, struct sk_buff * skb, const struct nf_hook_state * state)
 {
     <...
- if (nft_set_pktinfo_ipv6(&pkt, skb, state) < 0) {
- return NF_DROP;
- }
+ nft_set_pktinfo_ipv6(&pkt, skb, state);
     ...>
 }
