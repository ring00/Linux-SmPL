//# pattern-1, witnesses: 15
@@
@@
- nf_ct_l3proto_module_put(par->family)
+ nf_ct_netns_put(par->net, par->family)
//# pattern-2, witnesses: 13
@@
@@
- nf_ct_l3proto_try_module_get(par->family)
+ nf_ct_netns_get(par->net, par->family)
//# pattern-3, witnesses: 2
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
- nft_ct_l3proto_try_module_get(ctx->afi->family)
+ nft_ct_netns_get(ctx->net, ctx->afi->family)
     ...>
 }
