//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct inode_operations i = {
    .getxattr = fn,
};
@@
identifier buffer;
identifier dentry;
identifier name;
identifier r0.fn;
identifier size;
@@
- ssize_t fn(struct dentry * dentry, const char * name, void * buffer, size_t size)
+ ssize_t fn(struct dentry * dentry, struct inode * inode, const char * name, void * buffer, size_t size)
 { ... }
//# pattern-7, witnesses: 3
@r1@
identifier i, fn;
@@
struct inode_operations i = {
    .getxattr = fn,
};
@@
identifier buf_size;
identifier direntry;
identifier ea_name;
identifier ea_value;
identifier inode;
identifier r1.fn;
@@
 ssize_t fn(struct dentry * direntry, struct inode * inode, const char * ea_name, void * ea_value, size_t buf_size)
 {
     <...
- d_inode(direntry)
+ inode
     ...>
 }
//# pattern-5, witnesses: 2
@r2@
identifier i, fn;
@@
struct inode_operations i = {
    .getxattr = fn,
};
@@
identifier entry;
identifier inode;
identifier name;
identifier r2.fn;
identifier size;
identifier value;
@@
 ssize_t fn(struct dentry * entry, struct inode * inode, const char * name, void * value, size_t size)
 {
     <...
- struct inode * inode = d_inode(entry);
     ...>
 }
//# pattern-6, witnesses: 2
@r3@
identifier i, fn;
@@
struct inode_operations i = {
    .getxattr = fn,
};
@@
identifier dentry;
identifier inode;
identifier name;
identifier r3.fn;
identifier size;
identifier value;
@@
 ssize_t fn(struct dentry * dentry, struct inode * inode, const char * name, void * value, size_t size)
 {
     <...
- generic_getxattr(dentry, name, value, size)
+ generic_getxattr(dentry, inode, name, value, size)
     ...>
 }
//# pattern-9, witnesses: 2
@r4@
identifier i, fn;
@@
struct inode_operations i = {
    .getxattr = fn,
};
@@
identifier data;
identifier dentry;
identifier inode;
identifier name;
identifier size;
@@
 ssize_t gfs2_getxattr(struct dentry * dentry, struct inode * inode, const char * name, void * data, size_t size)
 {
     <...
- generic_getxattr(dentry, name, data, size)
+ generic_getxattr(dentry, inode, name, data, size)
     ...>
 }
