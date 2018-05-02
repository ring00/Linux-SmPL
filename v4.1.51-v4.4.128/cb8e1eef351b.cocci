//# pattern-1, witnesses: 13
@@
identifier attr;
identifier dentry;
identifier fn;
@@
 int fn(struct dentry * dentry, struct iattr * attr)
 {
     <...
- inode_change_ok(inode, attr)
+ setattr_prepare(dentry, attr)
     ...>
 }
