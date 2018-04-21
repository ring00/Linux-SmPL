//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier file;
identifier flags;
identifier pos;
identifier r0.fn;
typedef rwf_t;
identifier vec;
identifier vlen;
@@
- ssize_t fn(struct file * file, const struct iovec * vec, unsigned long vlen, loff_t * pos, int flags)
+ ssize_t fn(struct file * file, const struct iovec * vec, unsigned long vlen, loff_t * pos, rwf_t flags)
 { ... }
//# pattern-14, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier file;
identifier flags;
identifier iter;
identifier ppos;
identifier r1.fn;
typedef rwf_t;
@@
- ssize_t fn(struct file * file, struct iov_iter * iter, loff_t * ppos, int flags)
+ ssize_t fn(struct file * file, struct iov_iter * iter, loff_t * ppos, rwf_t flags)
 { ... }
