//# pattern-1, witnesses: 7
@@
identifier s;
@@
- struct nf_ct_ext_type s = {
+ const struct nf_ct_ext_type s = {
 };
//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier r0.fn;
identifier type;
@@
- int fn(struct nf_ct_ext_type * type)
+ int fn(const struct nf_ct_ext_type * type)
 { ... }
