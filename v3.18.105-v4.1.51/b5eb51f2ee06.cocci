//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct file_system_type i = {
    .mount = fn,
};
@@
identifier data;
identifier dev_name;
identifier flags;
identifier fs_type;
identifier r0.fn;
@@
 struct dentry * fn(struct file_system_type * fs_type, int flags, const char * dev_name, void * data)
 {
     <...
- if (!capable(CAP_SYS_ADMIN) && !fs_fully_visible(fs_type)) {
- return ERR_PTR(-EPERM);
- }
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression E1;
identifier s;
@@
 struct file_system_type s = {
+    .fs_flags = 32 | E1,
 };
