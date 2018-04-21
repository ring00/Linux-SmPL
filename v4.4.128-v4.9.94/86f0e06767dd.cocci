//# pattern-2, witnesses: 3
@@
identifier filp;
identifier fn;
identifier inode;
@@
 int fn(struct inode * inode, struct file * filp)
 {
     <...
- REAL_FOPS_DEREF(dentry)
+ debugfs_real_fops(filp)
     ...>
 }
