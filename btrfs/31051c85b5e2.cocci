//# pattern-1, witnesses: 35
@@
expression V0;
@@
- inode_change_ok(V0, attr)
+ setattr_prepare(dentry, attr)
