//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
typedef __u32;
identifier dentry;
identifier mask;
identifier path;
@@
 int __fsnotify_parent(struct path * path, struct dentry * dentry, __u32 mask)
 {
     <...
- dentry->d_name
+ name
     ...>
 }
