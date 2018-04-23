//# pattern-5, witnesses: 8
@@
expression E0;
expression ME1;
identifier expr;
identifier fn;
identifier pkt;
identifier regs;
@@
 void fn(const struct nft_expr * expr, struct nft_regs * regs, const struct nft_pktinfo * pkt)
 {
     <...
- E0 = *&regs->data[ME1]
+ E0 = nft_reg_load16(&regs->data[ME1])
     ...>
 }
//# pattern-8, witnesses: 2
@@
@@
- *dest = PACKET_MULTICAST
+ nft_reg_store8(dest, PACKET_MULTICAST)
//# pattern-11, witnesses: 2
@@
@@
- *dest = PACKET_BROADCAST;
+ nft_reg_store8(dest, PACKET_BROADCAST);
//# pattern-14, witnesses: 2
@@
@@
- *dest = PACKET_MULTICAST
+ nft_reg_store8(dest, PACKET_MULTICAST)
