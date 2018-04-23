//# pattern-6, witnesses: 4
@@
expression E0;
@@
- err = nft_validate_output_register(E0->dreg);
- if (err < 0) {
- return err;
- }
//# pattern-1, witnesses: 2
@@
@@
- int err = err;
- err = nft_validate_output_register(priv->dreg);
- if (err < 0) {
- return err;
- }
//# pattern-4, witnesses: 2
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
- int err = err;
- err = nft_validate_output_register(priv->dreg);
- err = nft_validate_register_store(ctx, priv->dreg, NULL, NFT_DATA_VALUE, len);
- if (err < 0) {
- return err;
- }
- return 0;
+ return nft_validate_register_store(ctx, priv->dreg, NULL, NFT_DATA_VALUE, len);
     ...>
 }
//# pattern-5, witnesses: 2
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
- int err = err;
- err = nft_validate_output_register(priv->dreg);
- if (err < 0) {
- return err;
- }
- err = nft_validate_register_store(ctx, priv->dreg, NULL, NFT_DATA_VALUE, len);
- return 0;
+ return nft_validate_register_store(ctx, priv->dreg, NULL, NFT_DATA_VALUE, len);
     ...>
 }
