//# pattern-1, witnesses: 9
@@
expression E0;
@@
- kiocb.ki_nbytes = E0;
//# pattern-2, witnesses: 5
@@
identifier fn;
identifier iocb;
identifier to;
@@
 ssize_t fn(struct kiocb * iocb, struct iov_iter * to)
 {
     <...
- iocb->ki_nbytes
+ iov_iter_count(to)
     ...>
 }
//# pattern-3, witnesses: 3
@r0@
identifier i, fn;
@@
struct file_operations i = {
    .write_iter = fn,
};
@@
identifier from;
identifier iocb;
@@
 ssize_t ocfs2_file_write_iter(struct kiocb * iocb, struct iov_iter * from)
 {
     <...
- iocb->ki_nbytes
+ count
     ...>
 }
