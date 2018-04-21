//# pattern-1, witnesses: 6
@@
expression E0;
identifier dentry;
identifier dir;
identifier fn;
identifier ptr;
identifier task;
@@
 int fn(struct inode * dir, struct dentry * dentry, struct task_struct * task, const void * ptr)
 {
     <...
- inode = proc_pid_make_inode(dir->i_sb, task);
- inode->i_mode = E0;
+ inode = proc_pid_make_inode(dir->i_sb, task, E0);
     ...>
 }
