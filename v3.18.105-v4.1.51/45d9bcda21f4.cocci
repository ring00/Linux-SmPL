//# pattern-2, witnesses: 3
@r0@
identifier i, fn;
@@
struct nft_expr_ops i = {
    .init = fn,
};
@@
identifier ctx;
identifier expr;
identifier r0.fn;
identifier tb;
@@
 int fn(const struct nft_ctx * ctx, const struct nft_expr * expr, const struct nlattr *const * tb)
 {
     <...
- nft_validate_data_load(ctx, priv->dreg, NULL, NFT_DATA_VALUE)
+ nft_validate_data_load(ctx, priv->dreg, NULL, NFT_DATA_VALUE, len)
     ...>
 }
//# pattern-4, witnesses: 3
@r1@
identifier i, fn;
@@
struct nft_expr_ops i = {
    .init = fn,
};
@@
identifier ctx;
identifier expr;
identifier r1.fn;
identifier tb;
@@
 int fn(const struct nft_ctx * ctx, const struct nft_expr * expr, const struct nlattr *const * tb)
 {
     <...
- nft_validate_data_load(ctx, priv->dreg, NULL, NFT_DATA_VALUE)
+ nft_validate_data_load(ctx, priv->dreg, NULL, NFT_DATA_VALUE, priv->len)
     ...>
 }
