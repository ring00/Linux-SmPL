//# pattern-2, witnesses: 2
@@
identifier filp;
identifier fn;
identifier inode;
@@
 int fn(struct inode * inode, struct file * filp)
 {
     <...
- alloc_nfs_open_context(file_dentry(filp), filp->f_mode)
+ alloc_nfs_open_context(file_dentry(filp), filp->f_mode, filp)
     ...>
 }
