//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier proto;
identifier r0.fn;
@@
- int fn(struct nf_conntrack_l3proto * proto)
+ int fn(const struct nf_conntrack_l3proto * proto)
 { ... }
