//# pattern-1, witnesses: 59
@@
expression E0;
@@
- current_fs_time(E0->i_sb)
+ current_time(E0)
//# pattern-3, witnesses: 3
@@
expression E0;
@@
- current_fs_time(E0)
+ current_time(inode)
