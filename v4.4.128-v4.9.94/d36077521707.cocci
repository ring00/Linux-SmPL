//# pattern-1, witnesses: 2
@@
identifier dentry;
identifier fn;
identifier old_name;
identifier parent;
@@
- int fn(struct path * parent, struct dentry * dentry, const char * old_name)
+ int fn(const struct path * parent, struct dentry * dentry, const char * old_name)
 { ... }
//# pattern-2, witnesses: 2
@@
identifier dentry;
identifier dir;
identifier fn;
identifier mode;
typedef umode_t;
@@
- int fn(struct path * dir, struct dentry * dentry, umode_t mode)
+ int fn(const struct path * dir, struct dentry * dentry, umode_t mode)
 { ... }
//# pattern-6, witnesses: 2
@@
identifier dentry;
identifier dev;
identifier dir;
identifier fn;
identifier mode;
typedef umode_t;
@@
- int fn(struct path * dir, struct dentry * dentry, umode_t mode, unsigned int dev)
+ int fn(const struct path * dir, struct dentry * dentry, umode_t mode, unsigned int dev)
 { ... }
