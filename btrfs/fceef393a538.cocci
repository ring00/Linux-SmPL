//# pattern-3, witnesses: 31
@@
expression F1;
identifier s;
@@
 struct inode_operations s = {
-    .put_link = F1,
 };
//# pattern-21, witnesses: 4
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
 { ... }
//# pattern-1, witnesses: 2
@r1@
identifier i, fn;
@@
struct inode_operations i = {
    .get_link = fn,
};
@@
identifier dentry;
identifier done;
identifier inode;
identifier r1.fn;
@@
 const char * fn(struct dentry * dentry, struct inode * inode, struct delayed_call * done)
 {
     <...
- return *cookie = paddr;
+ set_delayed_call(done, kfree_link, paddr);
+ return paddr;
     ...>
 }
//# pattern-7, witnesses: 2
@r2@
identifier i, fn;
@@
struct inode_operations i = {
    .get_link = fn,
};
@@
identifier dentry;
identifier done;
identifier inode;
identifier r2.fn;
@@
 const char * fn(struct dentry * dentry, struct inode * inode, struct delayed_call * done)
 {
     <...
- return *cookie = name;
+ set_delayed_call(done, kfree_link, name);
+ return name;
     ...>
 }
//# pattern-19, witnesses: 2
@@
identifier dentry;
identifier done;
identifier inode;
@@
 const char * ovl_get_link(struct dentry * dentry, struct inode * inode, struct delayed_call * done)
 {
     <...
- struct ovl_link_data * data = NULL;
- if (realinode->i_op->put_link) {
- data = kmalloc(sizeof(unsigned long), GFP_KERNEL);
- if (!data) {
- return ERR_PTR(-ENOMEM);
- }
- data->realdentry = realdentry;
- }
     ...>
 }
