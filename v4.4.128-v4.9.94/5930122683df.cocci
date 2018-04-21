//# pattern-1, witnesses: 10
@r0@
identifier i, fn;
@@
struct xattr_handler i = {
    .set = fn,
};
@@
identifier dentry;
identifier flags;
identifier handler;
identifier name;
identifier r0.fn;
identifier size;
identifier value;
@@
- int fn(const struct xattr_handler * handler, struct dentry * dentry, const char * name, const void * value, size_t size, int flags)
+ int fn(const struct xattr_handler * handler, struct dentry * unused, struct inode * inode, const char * name, const void * value, size_t size, int flags)
 {
     <...
- d_inode(dentry)
+ inode
     ...>
 }
//# pattern-5, witnesses: 3
@r1@
identifier i, fn;
@@
struct xattr_handler i = {
    .set = fn,
};
@@
identifier flags;
identifier handler;
identifier inode;
identifier name;
identifier r1.fn;
identifier size;
identifier unused;
identifier value;
@@
 int fn(const struct xattr_handler * handler, struct dentry * unused, struct inode * inode, const char * name, const void * value, size_t size, int flags)
 {
     <...
- struct inode * inode = d_inode(dentry);
     ...>
 }
//# pattern-7, witnesses: 3
@r2@
identifier i, fn;
@@
struct xattr_handler i = {
    .set = fn,
};
@@
identifier flags;
identifier handler;
identifier inode;
identifier name;
identifier r2.fn;
identifier size;
identifier unused;
identifier value;
@@
 int fn(const struct xattr_handler * handler, struct dentry * unused, struct inode * inode, const char * name, const void * value, size_t size, int flags)
 {
     <...
- dentry->d_sb
+ inode->i_sb
     ...>
 }
//# pattern-2, witnesses: 2
@r3@
identifier i, fn;
@@
struct xattr_handler i = {
    .set = fn,
};
@@
identifier dentry;
identifier flags;
identifier handler;
identifier name;
identifier size;
identifier value;
@@
- int cifs_xattr_set(const struct xattr_handler * handler, struct dentry * dentry, const char * name, const void * value, size_t size, int flags)
+ int cifs_xattr_set(const struct xattr_handler * handler, struct dentry * dentry, struct inode * inode, const char * name, const void * value, size_t size, int flags)
 {
     <...
- d_inode(dentry)
+ inode
     ...>
 }
