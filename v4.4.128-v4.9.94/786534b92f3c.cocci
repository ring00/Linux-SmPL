//# pattern-2, witnesses: 2
@@
expression V0;
identifier buf;
identifier dentry;
identifier fn;
identifier size;
@@
 ssize_t fn(struct dentry * dentry, char * buf, size_t size)
 {
     <...
- simple_xattr_list(&V0->xattrs, buf, size)
+ simple_xattr_list(d_inode(dentry), &V0->xattrs, buf, size)
     ...>
 }
