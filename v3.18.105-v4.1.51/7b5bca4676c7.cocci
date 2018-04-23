//# pattern-1, witnesses: 6
@@
expression E0;
expression ME1;
identifier data;
identifier expr;
identifier fn;
identifier pkt;
@@
 void fn(const struct nft_expr * expr, struct nft_data * data, const struct nft_pktinfo * pkt)
 {
     <...
- E0 = data[ME1].data[0]
+ E0 = *&data[ME1].data[0]
     ...>
 }
