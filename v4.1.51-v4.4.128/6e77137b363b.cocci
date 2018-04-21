//# pattern-1, witnesses: 10
@r0@
identifier i, fn;
@@
struct inode_operations i = {
    .follow_link = fn,
};
@@
identifier cookie;
identifier dentry;
identifier nd;
identifier r0.fn;
@@
- const char * fn(struct dentry * dentry, void ** cookie, struct nameidata * nd)
+ const char * fn(struct dentry * dentry, void ** cookie)
 { ... }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct inode_operations i = {
    .follow_link = fn,
};
@@
identifier cookie;
identifier dentry;
identifier r1.fn;
@@
 const char * fn(struct dentry * dentry, void ** cookie)
 { ... }
