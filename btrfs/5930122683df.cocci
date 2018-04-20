//# pattern-1, witnesses: 25
@r0@
identifier i, fn;
@@
struct xattr_handler i = {
    .set = fn,
};
@@
identifier buffer;
identifier dentry;
identifier flags;
identifier handler;
identifier name;
identifier r0.fn;
identifier size;
@@
- int fn(const struct xattr_handler * handler, struct dentry * dentry, const char * name, const void * buffer, size_t size, int flags)
+ int fn(const struct xattr_handler * handler, struct dentry * unused, struct inode * inode, const char * name, const void * buffer, size_t size, int flags)
 {
     <...
- d_inode(dentry)
+ inode
     ...>
 }
//# pattern-10, witnesses: 5
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
- dentry->d_sb
+ inode->i_sb
     ...>
 }
//# pattern-11, witnesses: 5
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
- struct inode * inode = d_inode(dentry);
     ...>
 }
//# pattern-8, witnesses: 3
@r3@
identifier i, fn;
@@
struct xattr_handler i = {
    .set = fn,
};
@@
expression E1;
expression S0;
identifier buffer;
identifier flags;
identifier handler;
identifier inode;
identifier name;
identifier r3.fn;
identifier size;
identifier unused;
@@
 int fn(const struct xattr_handler * handler, struct dentry * unused, struct inode * inode, const char * name, const void * buffer, size_t size, int flags)
 {
     <...
- hfsplus_setxattr(dentry, name, buffer, size, flags, S0, E1)
+ hfsplus_setxattr(inode, name, buffer, size, flags, S0, E1)
     ...>
 }
//# pattern-2, witnesses: 2
@r4@
identifier i, fn;
@@
struct xattr_handler i = {
    .set = fn,
};
@@
identifier buffer;
identifier flags;
identifier handler;
identifier inode;
identifier name;
identifier r4.fn;
identifier size;
identifier unused;
@@
 int fn(const struct xattr_handler * handler, struct dentry * unused, struct inode * inode, const char * name, const void * buffer, size_t size, int flags)
 {
     <...
- dentry->d_inode
+ inode
     ...>
 }
//# pattern-4, witnesses: 2
@r5@
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
identifier r5.fn;
identifier size;
identifier value;
@@
- int fn(const struct xattr_handler * handler, struct dentry * dentry, const char * name, const void * value, size_t size, int flags)
+ int fn(const struct xattr_handler * handler, struct dentry * dentry, struct inode * inode, const char * name, const void * value, size_t size, int flags)
 {
     <...
- struct inode * inode = d_inode(dentry);
     ...>
 }
//# pattern-6, witnesses: 2
@r6@
identifier i, fn;
@@
struct xattr_handler i = {
    .set = fn,
};
@@
identifier dentry;
identifier flags;
identifier handler;
identifier inode;
identifier name;
identifier size;
identifier value;
@@
 int cifs_xattr_set(const struct xattr_handler * handler, struct dentry * dentry, struct inode * inode, const char * name, const void * value, size_t size, int flags)
 {
     <...
- d_inode(dentry)
+ inode
     ...>
 }
//# pattern-12, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- handler->set(handler, dentry, name, E0, E1, E2)
+ handler->set(handler, dentry, d_inode(dentry), name, E0, E1, E2)
