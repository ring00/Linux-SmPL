//# pattern-1, witnesses: 2
@@
expression E0;
identifier fn;
identifier from;
identifier iocb;
@@
 ssize_t fn(struct kiocb * iocb, struct iov_iter * from)
 {
     <...
- generic_file_direct_write(iocb, from, E0)
+ generic_file_direct_write(iocb, from)
     ...>
 }
