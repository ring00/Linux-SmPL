//# pattern-2, witnesses: 4
@@
expression E0;
expression E1;
identifier ctx;
identifier expr;
identifier fn;
identifier tb;
@@
 int fn(const struct nft_ctx * ctx, const struct nft_expr * expr, const struct nlattr *const * tb)
 {
     <...
- err = E0;
- if (E1) {
- return err;
- }
     ...>
 }
//# pattern-1, witnesses: 2
@@
expression V0;
identifier ctx;
identifier expr;
identifier fn;
identifier tb;
@@
 int fn(const struct nft_ctx * ctx, const struct nft_expr * expr, const struct nlattr *const * tb)
 {
     <...
- ret = nft_compat_chain_validate_dependency(V0->table, ctx->chain);
- if (ret < 0) {
- }
     ...>
 }
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
- int icmp_code = icmp_code;
- err = ;
- if (err < 0) {
- return err;
- }
+ int icmp_code = icmp_code;
     ...>
 }
