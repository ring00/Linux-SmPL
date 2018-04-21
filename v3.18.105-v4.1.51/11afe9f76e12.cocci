//# pattern-2, witnesses: 2
@@
identifier arg;
identifier filp;
identifier flp;
identifier priv;
@@
 int generic_add_lease(struct file * filp, long arg, struct file_lock ** flp, void ** priv)
 {
     <...
- check_conflicting_open(dentry, arg)
+ check_conflicting_open(dentry, arg, lease->fl_flags)
     ...>
 }
