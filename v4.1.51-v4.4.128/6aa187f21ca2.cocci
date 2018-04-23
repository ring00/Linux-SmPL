//# pattern-1, witnesses: 13
@r0@
identifier i, fn;
@@
struct nft_expr_ops i = {
    .eval = fn,
};
@@
identifier expr;
identifier pkt;
identifier r0.fn;
identifier regs;
@@
 void fn(const struct nft_expr * expr, struct nft_regs * regs, const struct nft_pktinfo * pkt)
 {
     <...
- pkt->ops->hooknum
+ pkt->hook
     ...>
 }
//# pattern-3, witnesses: 3
@@
@@
- nft_set_pktinfo_ipv6(&pkt, ops, skb, state)
+ nft_set_pktinfo_ipv6(&pkt, skb, state)
//# pattern-4, witnesses: 3
@@
@@
- nft_set_pktinfo_ipv4(&pkt, ops, skb, state)
+ nft_set_pktinfo_ipv4(&pkt, skb, state)
