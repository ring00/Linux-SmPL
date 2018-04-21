//# pattern-2, witnesses: 3
@@
@@
+ if (test_opt(inode->i_sb)) {
+ inode->i_fop = &ext4_dax_file_operations;
+ }
