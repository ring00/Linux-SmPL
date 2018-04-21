//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier inode;
identifier r0.fn;
@@
- void fn(const struct inode * inode)
+ void fn(struct inode * inode)
 { ... }
