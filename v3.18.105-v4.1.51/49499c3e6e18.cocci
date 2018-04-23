//# pattern-4, witnesses: 19
@@
expression ME0;
@@
- regs->data[ME0].data[0]
+ regs->data[ME0]
//# pattern-11, witnesses: 2
@r0@
identifier i, fn;
@@
struct nft_expr_ops i = {
    .eval = fn,
};
@@
expression ME0;
identifier expr;
identifier pkt;
identifier regs;
@@
 void nft_nat_eval(const struct nft_expr * expr, struct nft_regs * regs, const struct nft_pktinfo * pkt)
 {
     <...
- &regs->data[ME0].data
+ &regs->data[ME0]
     ...>
 }
