//# pattern-1, witnesses: 4
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier r0.fn;
identifier rstc;
@@
 int fn(struct reset_control * rstc)
 {
     ...
- if (WARN_ON(IS_ERR_OR_NULL(rstc))) {
- }
+ if (!rstc) {
+ return 0;
+ }
+ if (WARN_ON(IS_ERR(rstc))) {
+ }
 }
