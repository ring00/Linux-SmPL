//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct nft_object_type i = {
    .init = fn,
};
@@
identifier obj;
identifier r0.fn;
identifier tb;
@@
- int fn(const struct nlattr *const * tb, struct nft_object * obj)
+ int fn(const struct nft_ctx * ctx, const struct nlattr *const * tb, struct nft_object * obj)
 { ... }
