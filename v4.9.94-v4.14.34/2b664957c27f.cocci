//# pattern-14, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier ops;
identifier r0.fn;
@@
- int fn(struct nft_set_ops * ops)
+ int fn(struct nft_set_type * type)
 {
     <...
- ops->list
+ type->list
     ...>
 }
