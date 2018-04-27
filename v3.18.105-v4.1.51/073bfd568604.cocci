//# pattern-1, witnesses: 3
@@
@@
- nft_set_pktinfo_ipv6(&pkt, ops, skb, state->in, state->out)
+ nft_set_pktinfo_ipv6(&pkt, ops, skb, state)
//# pattern-5, witnesses: 3
@@
@@
- nft_set_pktinfo_ipv4(&pkt, ops, skb, state->in, state->out)
+ nft_set_pktinfo_ipv4(&pkt, ops, skb, state)
