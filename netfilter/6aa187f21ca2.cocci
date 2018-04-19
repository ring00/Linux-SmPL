//# pattern-1, witnesses: 22
@@
identifier expr;
identifier fn;
identifier pkt;
identifier regs;
@@
 void fn(const struct nft_expr * expr, struct nft_regs * regs, const struct nft_pktinfo * pkt)
 {
     <...
- pkt->ops->hooknum
+ pkt->hook
     ...>
 }
//# pattern-7, witnesses: 5
@@
identifier expr;
identifier fn;
identifier pkt;
identifier regs;
@@
 void fn(const struct nft_expr * expr, struct nft_regs * regs, const struct nft_pktinfo * pkt)
 {
     <...
- pkt->ops
+ pkt
     ...>
 }
//# pattern-4, witnesses: 3
@@
@@
- nft_set_pktinfo_ipv6(&pkt, ops, skb, state)
+ nft_set_pktinfo_ipv6(&pkt, skb, state)
//# pattern-5, witnesses: 3
@@
@@
- nft_set_pktinfo_ipv4(&pkt, ops, skb, state)
+ nft_set_pktinfo_ipv4(&pkt, skb, state)
