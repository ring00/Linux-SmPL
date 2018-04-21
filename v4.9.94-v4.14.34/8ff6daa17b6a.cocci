//# pattern-2, witnesses: 4
@@
identifier s;
@@
- struct iomap_ops s = {
+ const struct iomap_ops s = {
 };
//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier iocb;
identifier iter;
identifier ops;
identifier r0.fn;
@@
- ssize_t fn(struct kiocb * iocb, struct iov_iter * iter, struct iomap_ops * ops)
+ ssize_t fn(struct kiocb * iocb, struct iov_iter * iter, const struct iomap_ops * ops)
 { ... }
//# pattern-6, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier ops;
identifier r1.fn;
identifier vma;
identifier vmf;
@@
- int fn(struct vm_area_struct * vma, struct vm_fault * vmf, struct iomap_ops * ops)
+ int fn(struct vm_area_struct * vma, struct vm_fault * vmf, const struct iomap_ops * ops)
 { ... }
