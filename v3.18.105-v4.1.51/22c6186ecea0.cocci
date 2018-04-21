//# pattern-2, witnesses: 8
@r0@
identifier i, fn;
@@
struct address_space_operations i = {
    .direct_IO = fn,
};
@@
identifier iocb;
identifier iter;
typedef loff_t;
identifier offset;
identifier r0.fn;
identifier rw;
@@
- ssize_t fn(int rw, struct kiocb * iocb, struct iov_iter * iter, loff_t offset)
+ ssize_t fn(struct kiocb * iocb, struct iov_iter * iter, loff_t offset)
 { ... }
//# pattern-1, witnesses: 7
@r1@
identifier i, fn;
@@
struct address_space_operations i = {
    .direct_IO = fn,
};
@@
identifier iocb;
identifier iter;
typedef loff_t;
identifier offset;
identifier r1.fn;
@@
 ssize_t fn(struct kiocb * iocb, struct iov_iter * iter, loff_t offset)
 { ... }
