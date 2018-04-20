//# pattern-1, witnesses: 12
@@
expression V0;
@@
- V0->f_flags & O_DIRECT
+ iocb->ki_flags & IOCB_DIRECT
//# pattern-3, witnesses: 4
@@
identifier fn;
identifier from;
identifier iocb;
@@
 ssize_t fn(struct kiocb * iocb, struct iov_iter * from)
 {
     <...
- file->f_flags & O_APPEND
+ iocb->ki_flags & IOCB_APPEND
     ...>
 }
//# pattern-2, witnesses: 3
@@
identifier fn;
identifier from;
identifier iocb;
@@
 ssize_t fn(struct kiocb * iocb, struct iov_iter * from)
 {
     <...
- io_is_direct(file)
+ iocb->ki_flags & IOCB_DIRECT
     ...>
 }
//# pattern-5, witnesses: 2
@@
identifier fn;
identifier iocb;
identifier to;
@@
 ssize_t fn(struct kiocb * iocb, struct iov_iter * to)
 {
     <...
- iocb->ki_filp->f_flags & O_DIRECT
+ iocb->ki_flags & IOCB_DIRECT
     ...>
 }
