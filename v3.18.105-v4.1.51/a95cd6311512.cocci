//# pattern-3, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
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
- dax_do_io(rw, iocb, inode, iter, offset, E0, E1, E2)
+ dax_do_io(iocb, inode, iter, offset, E0, E1, E2)
     ...>
 }
//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier end_io;
identifier flags;
identifier get_block;
identifier inode;
identifier iocb;
identifier iter;
typedef loff_t;
identifier pos;
identifier rw;
@@
- ssize_t dax_do_io(int rw, struct kiocb * iocb, struct inode * inode, struct iov_iter * iter, loff_t pos, get_block_t * get_block, dio_iodone_t * end_io, int flags)
+ ssize_t dax_do_io(struct kiocb * iocb, struct inode * inode, struct iov_iter * iter, loff_t pos, get_block_t * get_block, dio_iodone_t * end_io, int flags)
 {
     <...
- E0 && rw == READ
+ E0 && iov_iter_rw(iter) == READ
     ...>
 }
