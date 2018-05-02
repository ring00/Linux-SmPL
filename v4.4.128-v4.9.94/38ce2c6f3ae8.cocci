//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression IL1;
expression ME0;
identifier rdi;
@@
- int rvt_register_device(struct rvt_dev_info * rdi)
+ int rvt_register_device(struct rvt_dev_info * rdi)
 {
     <...
- if (!ME0) {
- rvt_pr_err(rdi);
- return -IL1;
- }
     ...>
 }
