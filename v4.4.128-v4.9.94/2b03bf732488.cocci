//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct nft_expr_ops i = {
    .dump = fn,
};
@@
expression EC0;
identifier expr;
identifier r0.fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, const struct nft_expr * expr)
 {
     <...
- nft_ng_dump(skb, priv->dreg, priv->modulus, EC0)
+ nft_ng_dump(skb, priv->dreg, priv->modulus, EC0, priv->offset)
     ...>
 }
