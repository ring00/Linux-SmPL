//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier r0.fn;
identifier se_cmd;
typedef u32;
typedef u64;
identifier unpacked_lun;
@@
- int fn(struct se_cmd * se_cmd, u32 unpacked_lun)
+ int fn(struct se_cmd * se_cmd, u64 unpacked_lun)
 { ... }
//# pattern-11, witnesses: 2
@@
expression list listE0;
@@
- kstrtoul(listE0)
+ kstrtoull(listE0)
