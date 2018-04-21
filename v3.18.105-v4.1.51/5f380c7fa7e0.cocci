//# pattern-6, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier from;
identifier iocb;
@@
 ssize_t __generic_file_write_iter(struct kiocb * iocb, struct iov_iter * from)
 {
     <...
- size_t count = iov_iter_count(from);
     ...>
 }
