//# pattern-1, witnesses: 2
@@
expression E0;
@@
- vfs_readv(file, vec, vlen, &E0)
+ vfs_readv(file, vec, vlen, &E0, 0)
//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier file;
identifier pos;
identifier r0.fn;
identifier vec;
identifier vlen;
@@
- ssize_t fn(struct file * file, const struct iovec * vec, unsigned long vlen, loff_t * pos)
+ ssize_t fn(struct file * file, const struct iovec * vec, unsigned long vlen, loff_t * pos, int flags)
 {
     <...
- do_readv_writev(E0, file, vec, vlen, pos)
+ do_readv_writev(E0, file, vec, vlen, pos, flags)
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression E0;
identifier file;
identifier fn;
identifier pos;
identifier vec;
identifier vlen;
@@
 size_t fn(struct file * file, const struct compat_iovec * vec, unsigned long vlen, loff_t * pos)
 {
     <...
- compat_do_readv_writev(E0, file, vec, vlen, pos)
+ compat_do_readv_writev(E0, file, vec, vlen, pos, 0)
     ...>
 }
