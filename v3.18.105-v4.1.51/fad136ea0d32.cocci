//# pattern-1, witnesses: 26
@@
expression E0;
@@
- dest->data[0] = E0
+ *dest = E0
//# pattern-3, witnesses: 14
@@
expression V0;
@@
- V0->data
+ V0
//# pattern-2, witnesses: 10
@@
expression ME0;
identifier expr;
identifier fn;
identifier pkt;
identifier regs;
@@
 void fn(const struct nft_expr * expr, struct nft_regs * regs, const struct nft_pktinfo * pkt)
 {
     <...
- &regs->data[ME0]
+ &regs->data[ME0].data[0]
     ...>
 }
//# pattern-7, witnesses: 4
@@
expression E0;
@@
- dest->data[0] = E0
+ *dest = E0
//# pattern-5, witnesses: 3
@@
expression E0;
@@
- strncpy(dest->data, E0->name, sizeof(unsigned long))
+ strncpy(dest, E0->name, IFNAMSIZ)
