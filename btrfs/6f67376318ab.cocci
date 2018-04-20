//# pattern-2, witnesses: 10
@@
identifier file_offset;
identifier fn;
identifier iocb;
identifier iter;
typedef loff_t;
identifier rw;
@@
 ssize_t fn(int rw, struct kiocb * iocb, struct iov_iter * iter, loff_t file_offset)
 {
     <...
- rw == WRITE
+ iov_iter_rw(iter) == WRITE
     ...>
 }
//# pattern-1, witnesses: 9
@@
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
- rw & WRITE
+ iov_iter_rw(iter) == WRITE
     ...>
 }
//# pattern-5, witnesses: 7
@@
expression E0;
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
- rw & WRITE && E0
+ iov_iter_rw == WRITE && E0
     ...>
 }
//# pattern-14, witnesses: 7
@@
identifier file_offset;
identifier fn;
identifier iocb;
identifier iter;
typedef loff_t;
identifier rw;
@@
 ssize_t fn(int rw, struct kiocb * iocb, struct iov_iter * iter, loff_t file_offset)
 {
     <...
- rw == READ
+ iov_iter_rw(iter) == READ
     ...>
 }
