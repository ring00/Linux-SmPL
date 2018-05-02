//# pattern-9, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression list listE0;
identifier r0.fn;
identifier rng;
@@
- void fn(struct hwrng * rng)
+ void fn(struct hwrng * rng)
 {
     <...
- hwrng_cleanup(rng)
+ drop_current_rng(listE0)
     ...>
 }
