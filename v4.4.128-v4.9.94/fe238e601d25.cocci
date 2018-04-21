//# pattern-2, witnesses: 26
@@
@@
- cinfo->lock
+ &cinfo->inode->i_lock
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- cinfo->lock = &E0->i_lock
+ cinfo->inode = E0
//# pattern-3, witnesses: 2
@@
@@
- cinfo.lock
+ &cinfo.inode->i_lock
