//# pattern-1, witnesses: 9
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
typedef ssize_t;
@@
 ssize_t fn(int rw, struct kiocb * iocb, struct iov_iter * iter, loff_t offset)
 {
     <...
- rw & WRITE
+ iov_iter_rw(iter) == WRITE
     ...>
 }
//# pattern-2, witnesses: 25
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
identifier rw;
typedef ssize_t;
@@
 ssize_t fn(int rw, struct kiocb * iocb, struct iov_iter * iter, loff_t offset)
 {
     <...
- rw
+ iov_iter_rw(iter)
     ...>
 }
//# pattern-4, witnesses: 7
@r2@
identifier i, fn;
@@
struct address_space_operations i = {
    .direct_IO = fn,
};
@@
expression E0;
expression E1;
expression E2;
identifier iocb;
identifier iter;
typedef loff_t;
identifier offset;
identifier r2.fn;
identifier rw;
typedef ssize_t;
@@
 ssize_t fn(int rw, struct kiocb * iocb, struct iov_iter * iter, loff_t offset)
 {
     <...
- rw & E0 << E1 && E2
+ iov_iter_rw == E0 << E1 && E2
     ...>
 }
