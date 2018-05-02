//# pattern-6, witnesses: 5
@r0@
identifier i, fn;
@@
struct inode_operations i = {
    .put_link = fn,
};
@@
identifier dentry;
identifier p;
identifier r0.fn;
@@
- void fn(struct dentry * dentry, void * p)
+ void fn(struct inode * unused, void * p)
 { ... }
//# pattern-2, witnesses: 4
@@
identifier c;
identifier fn;
identifier unused;
@@
 void fn(struct inode * unused, void * c)
 { ... }
