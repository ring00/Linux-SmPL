//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct xattr_handler i = {
    . = fn,
};
@@
identifier dentry;
identifier flags;
identifier handler;
identifier inode;
identifier name;
identifier r0.fn;
identifier size;
identifier value;
@@
 int fn(const struct xattr_handler * handler, struct dentry * dentry, struct inode * inode, const char * name, const void * value, size_t size, int flags)
 {
     <...
- posix_acl_valid(acl)
+ posix_acl_valid(inode->i_sb->s_user_ns, acl)
     ...>
 }
