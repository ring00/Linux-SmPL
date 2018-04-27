//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct nft_set_ops i = {
    .walk = fn,
};
@@
identifier ctx;
identifier iter;
identifier r0.fn;
identifier set;
@@
- void fn(const struct nft_ctx * ctx, const struct nft_set * set, struct nft_set_iter * iter)
+ void fn(const struct nft_ctx * ctx, struct nft_set * set, struct nft_set_iter * iter)
 { ... }
