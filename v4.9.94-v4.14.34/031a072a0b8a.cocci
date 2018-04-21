//# pattern-1, witnesses: 2
@@
@@
- inode_out->i_sb;
//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- vfs_clone_file_range(listE0)
+ do_clone_file_range(listE0)
