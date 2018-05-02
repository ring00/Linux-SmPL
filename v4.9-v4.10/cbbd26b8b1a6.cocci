//# pattern-1, witnesses: 10
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- copy_from_iter(E0, E1, E2) != E3
+ !copy_from_iter_full(E0, E1, E2)
//# pattern-3, witnesses: 3
@r0@
identifier i, fn;
@@
struct file_operations i = {
    .write_iter = fn,
};
@@
expression BO0;
identifier iocb;
identifier iter;
@@
 ssize_t orangefs_devreq_write_iter(struct kiocb * iocb, struct iov_iter * iter)
 {
     <...
- int n = n;
- n = copy_from_iter(&head, head_size, iter);
- n = copy_from_iter(&op->downcall, downcall_size, iter);
- n = copy_from_iter(op->downcall.trailer_buf, op->downcall.trailer_size, iter);
- if (BO0) {
- }
+ if (!copy_from_iter_full(op->downcall.trailer_buf, op->downcall.trailer_size, iter)) {
+ }
     ...>
 }
