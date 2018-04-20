//# pattern-2, witnesses: 17
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
identifier pos;
identifier r0.fn;
identifier rw;
@@
- ssize_t fn(int rw, struct kiocb * iocb, struct iov_iter * iter, loff_t pos)
+ ssize_t fn(struct kiocb * iocb, struct iov_iter * iter, loff_t pos)
 { ... }
//# pattern-3, witnesses: 7
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
//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
expression E3;
expression V2;
@@
- mapping->a_ops->direct_IO(E0, E1, &V2, E3)
+ mapping->a_ops->direct_IO(E1, &V2, E3)
