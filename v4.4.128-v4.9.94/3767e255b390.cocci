//# pattern-3, witnesses: 3
@r0@
identifier i, fn;
@@
struct inode_operations i = {
    .setxattr = fn,
};
@@
identifier dentry;
identifier flags;
identifier name;
identifier r0.fn;
identifier size;
identifier value;
@@
- int fn(struct dentry * dentry, const char * name, const void * value, size_t size, int flags)
+ int fn(struct dentry * dentry, struct inode * inode, const char * name, const void * value, size_t size, int flags)
 { ... }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct inode_operations i = {
    .setxattr = fn,
};
@@
identifier dentry;
identifier flags;
identifier name;
identifier size;
identifier value;
@@
- int kernfs_iop_setxattr(struct dentry * dentry, const char * name, const void * value, size_t size, int flags)
+ int kernfs_iop_setxattr(struct dentry * unused, struct inode * inode, const char * name, const void * value, size_t size, int flags)
 {
     <...
- d_inode(dentry)
+ inode
     ...>
 }
