//# pattern-2, witnesses: 25
@r0@
identifier i, fn;
@@
struct xattr_handler i = {
    .get = fn,
};
@@
identifier buffer;
identifier dentry;
identifier handler;
identifier name;
identifier r0.fn;
identifier size;
@@
- int fn(const struct xattr_handler * handler, struct dentry * dentry, const char * name, void * buffer, size_t size)
+ int fn(const struct xattr_handler * handler, struct dentry * unused, struct inode * inode, const char * name, void * buffer, size_t size)
 {
     <...
- d_inode(dentry)
+ inode
     ...>
 }
//# pattern-9, witnesses: 5
@r1@
identifier i, fn;
@@
struct xattr_handler i = {
    .get = fn,
};
@@
identifier buffer;
identifier handler;
identifier inode;
identifier name;
identifier r1.fn;
identifier size;
identifier unused;
@@
 int fn(const struct xattr_handler * handler, struct dentry * unused, struct inode * inode, const char * name, void * buffer, size_t size)
 {
     <...
- dentry->d_sb
+ inode->i_sb
     ...>
 }
//# pattern-5, witnesses: 3
@r2@
identifier i, fn;
@@
struct xattr_handler i = {
    .get = fn,
};
@@
expression E1;
expression S0;
identifier buffer;
identifier handler;
identifier inode;
identifier name;
identifier r2.fn;
identifier size;
identifier unused;
@@
 int fn(const struct xattr_handler * handler, struct dentry * unused, struct inode * inode, const char * name, void * buffer, size_t size)
 {
     <...
- hfsplus_getxattr(dentry, name, buffer, size, S0, E1)
+ hfsplus_getxattr(inode, name, buffer, size, S0, E1)
     ...>
 }
//# pattern-1, witnesses: 2
@r3@
identifier i, fn;
@@
struct xattr_handler i = {
    .get = fn,
};
@@
identifier buffer;
identifier handler;
identifier inode;
identifier name;
identifier r3.fn;
identifier size;
identifier unused;
@@
 int fn(const struct xattr_handler * handler, struct dentry * unused, struct inode * inode, const char * name, void * buffer, size_t size)
 {
     <...
- struct inode * inode = d_inode(dentry);
     ...>
 }
//# pattern-7, witnesses: 2
@r4@
identifier i, fn;
@@
struct xattr_handler i = {
    .get = fn,
};
@@
identifier buffer;
identifier handler;
identifier inode;
identifier name;
identifier r4.fn;
identifier size;
identifier unused;
@@
 int fn(const struct xattr_handler * handler, struct dentry * unused, struct inode * inode, const char * name, void * buffer, size_t size)
 {
     <...
- dentry->d_inode
+ inode
     ...>
 }
//# pattern-10, witnesses: 2
@r5@
identifier i, fn;
@@
struct xattr_handler i = {
    .get = fn,
};
@@
identifier handler;
identifier inode;
identifier name;
identifier size;
identifier unused;
identifier value;
@@
 int posix_acl_xattr_get(const struct xattr_handler * handler, struct dentry * unused, struct inode * inode, const char * name, void * value, size_t size)
 {
     <...
- d_backing_inode(dentry)
+ inode
     ...>
 }
