//# pattern-2, witnesses: 3
@r0@
identifier i, fn;
@@
struct nft_set_ops i = {
    .privsize = fn,
};
@@
identifier nla;
identifier r0.fn;
@@
- unsigned int fn(const struct nlattr *const * nla)
+ unsigned int fn(const struct nlattr *const * nla, const struct nft_set_desc * desc)
 { ... }
