//# pattern-5, witnesses: 9
@@
expression list listE0;
@@
- inode_dio_done(listE0)
+ inode_dio_end(listE0)
//# pattern-1, witnesses: 6
@@
@@
- atomic_inc(&inode->i_dio_count)
+ inode_dio_begin(inode)
