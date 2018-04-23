//# pattern-6, witnesses: 3
@r0@
identifier i, fn;
@@
struct nft_expr_ops i = {
    .init = fn,
};
@@
identifier ctx;
identifier expr;
identifier tb;
@@
 int nft_quota_init(const struct nft_ctx * ctx, const struct nft_expr * expr, const struct nlattr *const * tb)
 {
     <...
- u64 quota = quota;
- quota = ;
     ...>
 }
