//# pattern-1, witnesses: 10
@@
expression F0;
identifier fn;
identifier iocb;
identifier iter;
typedef loff_t;
identifier offset;
identifier rw;
@@
 ssize_t fn(int rw, struct kiocb * iocb, struct iov_iter * iter, loff_t offset)
 {
     <...
- blockdev_direct_IO(rw, iocb, inode, iter, offset, F0)
+ blockdev_direct_IO(iocb, inode, iter, offset, F0)
     ...>
 }
//# pattern-2, witnesses: 5
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
identifier fn;
identifier iocb;
identifier iter;
typedef loff_t;
identifier offset;
identifier rw;
@@
 ssize_t fn(int rw, struct kiocb * iocb, struct iov_iter * iter, loff_t offset)
 {
     <...
- __blockdev_direct_IO(rw, iocb, inode, E0, iter, offset, E1, E2, E3, E4)
+ __blockdev_direct_IO(iocb, inode, E0, iter, offset, E1, E2, E3, E4)
     ...>
 }
