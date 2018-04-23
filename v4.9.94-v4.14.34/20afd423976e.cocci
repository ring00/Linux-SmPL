//# pattern-1, witnesses: 2
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
- return 0;
+ return nf_ct_netns_get(ctx->net, ctx->afi->family);
     ...>
 }
