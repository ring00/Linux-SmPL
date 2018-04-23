//# pattern-6, witnesses: 9
@@
@@
- pkt->net
+ nft_net(pkt)
//# pattern-3, witnesses: 6
@@
@@
- pkt->out
+ nft_out(pkt)
//# pattern-4, witnesses: 5
@@
@@
- pkt->in
+ nft_in(pkt)
//# pattern-5, witnesses: 5
@@
identifier expr;
identifier fn;
identifier pkt;
identifier regs;
@@
 void fn(const struct nft_expr * expr, struct nft_regs * regs, const struct nft_pktinfo * pkt)
 {
     <...
- pkt->hook
+ nft_hook(pkt)
     ...>
 }
//# pattern-7, witnesses: 2
@r0@
identifier i, fn;
@@
struct nft_expr_ops i = {
    .eval = fn,
};
@@
expression E1;
expression F0;
identifier expr;
identifier pkt;
identifier r0.fn;
identifier regs;
@@
 void fn(const struct nft_expr * expr, struct nft_regs * regs, const struct nft_pktinfo * pkt)
 {
     <...
- F0(pkt->net, pkt->skb, pkt->hook, E1, oif)
+ F0(nft_net(pkt), pkt->skb, nft_hook(pkt), E1, oif)
     ...>
 }
//# pattern-11, witnesses: 2
@r1@
identifier i, fn;
@@
struct nft_expr_ops i = {
    .eval = fn,
};
@@
expression F0;
identifier expr;
identifier pkt;
identifier r1.fn;
identifier regs;
@@
 void fn(const struct nft_expr * expr, struct nft_regs * regs, const struct nft_pktinfo * pkt)
 {
     <...
- F0(pkt->net, pkt->skb, pkt->hook)
+ F0(nft_net(pkt), pkt->skb, nft_hook(pkt))
     ...>
 }
