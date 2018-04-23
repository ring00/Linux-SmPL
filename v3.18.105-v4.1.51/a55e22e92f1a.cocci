//# pattern-21, witnesses: 4
@r0@
identifier i, fn;
@@
struct nft_expr_ops i = {
    .eval = fn,
};
@@
identifier data;
identifier expr;
identifier pkt;
identifier r0.fn;
@@
- void fn(const struct nft_expr * expr, struct nft_data * data, const struct nft_pktinfo * pkt)
+ void fn(const struct nft_expr * expr, struct nft_regs * regs, const struct nft_pktinfo * pkt)
 {
     <...
- data[NFT_REG_VERDICT].verdict
+ regs->verdict.code
     ...>
 }
//# pattern-9, witnesses: 3
@r1@
identifier i, fn;
@@
struct nft_expr_ops i = {
    .eval = fn,
};
@@
expression E0;
identifier expr;
identifier pkt;
identifier r1.fn;
identifier regs;
@@
 void fn(const struct nft_expr * expr, struct nft_regs * regs, const struct nft_pktinfo * pkt)
 {
     <...
- data[E0->dreg]
+ regs->data[E0->dreg]
     ...>
 }
//# pattern-1, witnesses: 2
@r2@
identifier i, fn;
@@
struct nft_expr_ops i = {
    .eval = fn,
};
@@
expression E0;
identifier expr;
identifier pkt;
identifier r2.fn;
identifier regs;
@@
 void fn(const struct nft_expr * expr, struct nft_regs * regs, const struct nft_pktinfo * pkt)
 {
     <...
- unsigned int verdict = verdict;
- verdict = E0;
- data[NFT_REG_VERDICT].verdict = verdict;
+ regs->verdict.code = E0;
     ...>
 }
//# pattern-11, witnesses: 2
@@
expression E0;
identifier expr;
identifier fn;
identifier pkt;
identifier regs;
@@
 void fn(const struct nft_expr * expr, struct nft_regs * regs, const struct nft_pktinfo * pkt)
 {
     <...
- data[E0->sreg]
+ regs->data[E0->sreg]
     ...>
 }
//# pattern-12, witnesses: 2
@@
identifier expr;
identifier fn;
identifier pkt;
identifier regs;
@@
 void fn(const struct nft_expr * expr, struct nft_regs * regs, const struct nft_pktinfo * pkt)
 {
     <...
- data[NFT_REG_VERDICT].verdict
+ regs->verdict.code
     ...>
 }
