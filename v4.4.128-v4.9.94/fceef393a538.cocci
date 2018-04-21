//# pattern-6, witnesses: 15
@@
expression F1;
identifier s;
@@
 struct inode_operations s = {
-    .put_link = F1,
 };
//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct inode_operations i = {
    .get_link = fn,
};
@@
identifier cookie;
identifier dentry;
identifier inode;
identifier r0.fn;
@@
- const char * fn(struct dentry * dentry, struct inode * inode, void ** cookie)
+ const char * fn(struct dentry * dentry, struct inode * inode, struct delayed_call * done)
 {
     <...
- return *cookie = paddr;
+ set_delayed_call(done, kfree_link, paddr);
+ return paddr;
     ...>
 }
