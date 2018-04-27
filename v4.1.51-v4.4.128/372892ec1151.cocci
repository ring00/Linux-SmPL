//# pattern-2, witnesses: 2
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
- nf_send_reset(pkt->skb, pkt->hook)
+ nf_send_reset(pkt->net, pkt->skb, pkt->hook)
     ...>
 }
