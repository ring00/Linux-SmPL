//# pattern-1, witnesses: 2
@@
expression E0;
expression V1;
identifier dir;
identifier handle;
identifier inode;
@@
 int ext4_init_acl(handle_t * handle, struct inode * inode, struct inode * dir)
 {
     <...
- __ext4_set_acl(handle, inode, E0, V1)
+ __ext4_set_acl(handle, inode, E0, V1, XATTR_CREATE)
     ...>
 }
//# pattern-8, witnesses: 2
@@
expression E0;
@@
- ext4_xattr_set_credits(inode, E0, &credits)
+ ext4_xattr_set_credits(inode, E0, false, &credits)
