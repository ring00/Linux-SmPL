//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct nft_expr_ops i = {
    .eval = fn,
};
@@
identifier expr;
identifier pkt;
identifier regs;
@@
 void nft_reject_bridge_eval(const struct nft_expr * expr, struct nft_regs * regs, const struct nft_pktinfo * pkt)
 {
     <...
- struct net * net = dev_net();
     ...>
 }
//# pattern-6, witnesses: 2
@r1@
identifier i, fn;
@@
struct nft_expr_ops i = {
    .eval = fn,
};
@@
identifier expr;
identifier pkt;
identifier regs;
@@
 void nft_reject_inet_eval(const struct nft_expr * expr, struct nft_regs * regs, const struct nft_pktinfo * pkt)
 {
     <...
- struct net * net = dev_net();
     ...>
 }
