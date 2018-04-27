//# pattern-1, witnesses: 10
@@
expression E0;
expression V1;
identifier fn;
identifier from;
identifier iocb;
@@
 ssize_t fn(struct kiocb * iocb, struct iov_iter * from)
 {
     <...
- generic_write_sync(file, E0, V1)
+ generic_write_sync(iocb, E0, V1)
     ...>
 }
