//# pattern-9, witnesses: 2
@r0@
identifier i, fn;
@@
struct inode_operations i = {
    .follow_link = fn,
};
@@
expression V0;
identifier dentry;
identifier nd;
identifier r0.fn;
@@
- void * fn(struct dentry * dentry, struct nameidata * nd)
+ const char * fn(struct dentry * dentry, void ** cookie, struct nameidata * nd)
 {
     <...
- nd_set_link(nd, V0);
     ...>
 }
//# pattern-19, witnesses: 2
@@
expression V0;
identifier cookie;
identifier dentry;
identifier nd;
@@
 const char * ext4_follow_link(struct dentry * dentry, void ** cookie, struct nameidata * nd)
 {
     <...
- return V0;
+ return ERR_CAST(V0);
     ...>
 }
