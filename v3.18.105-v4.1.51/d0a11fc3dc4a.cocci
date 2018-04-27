//# pattern-4, witnesses: 3
@@
expression E0;
expression E2;
expression EC3;
expression V1;
@@
- nft_data_init(E0, &data, &V1, E2[EC3])
+ nft_data_init(E0, &data, sizeof(unsigned long), &V1, E2[EC3])
//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct nft_expr_ops i = {
    .init = fn,
};
@@
expression E0;
expression EC1;
identifier ctx;
identifier expr;
identifier r0.fn;
identifier tb;
@@
 int fn(const struct nft_ctx * ctx, const struct nft_expr * expr, const struct nlattr *const * tb)
 {
     <...
- nft_data_init(E0, &priv->data, &desc, tb[EC1])
+ nft_data_init(E0, &priv->data, sizeof(unsigned long), &desc, tb[EC1])
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression V0;
identifier attr;
identifier ctx;
identifier fn;
identifier set;
@@
 int fn(struct nft_ctx * ctx, struct nft_set * set, const struct nlattr * attr)
 {
     <...
- nft_data_init(ctx, &elem.key, &V0, nla[NFTA_SET_ELEM_KEY])
+ nft_data_init(ctx, &elem.key, sizeof(unsigned long), &V0, nla[NFTA_SET_ELEM_KEY])
     ...>
 }
