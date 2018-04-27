//# pattern-7, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
typedef gfp_t;
identifier metaval;
identifier mi;
identifier r0.fn;
@@
- int fn(struct tcf_meta_info * mi, void * metaval)
+ int fn(struct tcf_meta_info * mi, void * metaval, gfp_t gfp)
 {
     <...
- GFP_KERNEL
+ gfp
     ...>
 }
