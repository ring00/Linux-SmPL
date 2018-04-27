//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct nft_expr_ops i = {
    .eval = fn,
};
@@
expression E0;
identifier data;
identifier expr;
identifier pkt;
identifier r0.fn;
@@
 void fn(const struct nft_expr * expr, struct nft_data * data, const struct nft_pktinfo * pkt)
 {
     <...
- nf_send_unreach(pkt->skb, E0)
+ nf_send_unreach(pkt->skb, E0, pkt->ops->hooknum)
     ...>
 }
