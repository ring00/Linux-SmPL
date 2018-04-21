//# pattern-1, witnesses: 17
@@
expression E0;
@@
- S_ISDIR(E0->d_inode->i_mode)
+ d_is_dir(E0)
//# pattern-2, witnesses: 4
@@
expression E0;
@@
- S_ISREG(E0->d_inode->i_mode)
+ d_is_reg(E0)
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- E0 && S_ISLNK(dentry->d_inode->i_mode)
+ E0 && d_is_symlink(dentry)
