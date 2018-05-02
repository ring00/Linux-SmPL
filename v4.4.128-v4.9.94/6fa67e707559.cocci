//# pattern-3, witnesses: 10
@r0@
identifier i, fn;
@@
struct dentry_operations i = {
    .d_compare = fn,
};
@@
identifier dentry;
identifier len;
identifier name;
identifier parent;
identifier r0.fn;
identifier str;
@@
- int fn(const struct dentry * parent, const struct dentry * dentry, unsigned int len, const char * str, const struct qstr * name)
+ int fn(const struct dentry * dentry, unsigned int len, const char * str, const struct qstr * name)
 { ... }
//# pattern-1, witnesses: 6
@r1@
identifier i, fn;
@@
struct dentry_operations i = {
    .d_compare = fn,
};
@@
identifier dentry;
identifier len;
identifier name;
identifier r1.fn;
identifier str;
@@
 int fn(const struct dentry * dentry, unsigned int len, const char * str, const struct qstr * name)
 { ... }
//# pattern-2, witnesses: 3
@@
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
identifier PV0;
@@
- PV0->d_op->d_compare(E1, E2, E3, E4, E5)
+ PV0->d_op->d_compare(E1, E3, E4, E5)
