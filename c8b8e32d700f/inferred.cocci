//# pattern-2, witnesses: 5
@r0@
identifier i, fn;
@@
struct address_space_operations i = {
    .direct_IO = fn,
};
@@
expression E0;
identifier iocb;
identifier iter;
typedef loff_t;
identifier offset;
identifier r0.fn;
typedef ssize_t;
@@
- ssize_t fn(struct kiocb * iocb, struct iov_iter * iter, loff_t offset)
+ ssize_t fn(struct kiocb * iocb, struct iov_iter * iter)
 {
     <...
- offset + E0
+ iocb->ki_pos + E0
     ...>
 }
//# pattern-3, witnesses: 6
@r1@
identifier i, fn;
@@
struct address_space_operations i = {
    .direct_IO = fn,
};
@@
expression F0;
identifier iocb;
identifier iter;
identifier r1.fn;
typedef ssize_t;
@@
 ssize_t fn(struct kiocb * iocb, struct iov_iter * iter)
 {
     <...
- blockdev_direct_IO(iocb, inode, iter, offset, F0)
+ blockdev_direct_IO(iocb, inode, iter, F0)
     ...>
 }
//# pattern-5, witnesses: 3
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
expression E3;
identifier iocb;
identifier iter;
identifier r2.fn;
typedef ssize_t;
@@
 ssize_t fn(struct kiocb * iocb, struct iov_iter * iter)
 {
     <...
- return __blockdev_direct_IO(iocb, inode, E0, iter, offset, E1, E2, NULL, E3);
+ return __blockdev_direct_IO(iocb, inode, E0, iter, E1, E2, NULL, E3);
     ...>
 }
//# pattern-7, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- E0 = mapping->a_ops->direct_IO(E1, &E2, E3)
+ E0 = mapping->a_ops->direct_IO(E1, &E2)
//# pattern-9, witnesses: 3
@r3@
identifier i, fn;
@@
struct address_space_operations i = {
    .direct_IO = fn,
};
@@
identifier iocb;
identifier iter;
identifier r3.fn;
typedef ssize_t;
@@
 ssize_t fn(struct kiocb * iocb, struct iov_iter * iter)
 { ... }
//# pattern-13, witnesses: 2
@r4@
identifier i, fn;
@@
struct address_space_operations i = {
    .direct_IO = fn,
};
@@
expression E0;
expression E1;
expression E3;
expression E4;
expression F2;
identifier iocb;
identifier iter;
identifier r4.fn;
typedef ssize_t;
@@
 ssize_t fn(struct kiocb * iocb, struct iov_iter * iter)
 {
     <...
- E0 = __blockdev_direct_IO(iocb, inode, E1, iter, offset, F2, NULL, E3, E4);
+ loff_t offset = iocb->ki_pos;
+ E0 = __blockdev_direct_IO(iocb, inode, E1, iter, F2, NULL, E3, E4);
     ...>
 }
//# pattern-14, witnesses: 4
@r5@
identifier i, fn;
@@
struct address_space_operations i = {
    .direct_IO = fn,
};
@@
identifier iocb;
identifier iter;
identifier r5.fn;
typedef ssize_t;
@@
 ssize_t fn(struct kiocb * iocb, struct iov_iter * iter)
 { ... }
//# pattern-20, witnesses: 3
@r6@
identifier i, fn;
@@
struct address_space_operations i = {
    .direct_IO = fn,
};
@@
expression E0;
expression F1;
identifier iocb;
identifier iter;
identifier r6.fn;
typedef ssize_t;
@@
 ssize_t fn(struct kiocb * iocb, struct iov_iter * iter)
 {
     <...
- E0 = blockdev_direct_IO(iocb, inode, iter, offset, F1);
+ loff_t offset = iocb->ki_pos;
+ E0 = blockdev_direct_IO(iocb, inode, iter, F1);
     ...>
 }
//# pattern-22, witnesses: 2
@r7@
identifier i, fn;
@@
struct address_space_operations i = {
    .direct_IO = fn,
};
@@
expression E1;
expression E2;
expression F0;
identifier iocb;
identifier iter;
identifier r7.fn;
typedef ssize_t;
@@
 ssize_t fn(struct kiocb * iocb, struct iov_iter * iter)
 {
     <...
- return dax_do_io(iocb, inode, iter, offset, F0, E1, E2);
+ return dax_do_io(iocb, inode, iter, F0, E1, E2);
     ...>
 }
