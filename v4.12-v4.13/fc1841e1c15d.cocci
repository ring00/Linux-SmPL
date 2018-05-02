//# pattern-1, witnesses: 15
@r0@
identifier i, fn;
@@
struct anon i = {
    . = fn,
};
@@
identifier param;
identifier param_size;
identifier r0.fn;
@@
- int fn(struct dm_ioctl * param, size_t param_size)
+ int fn(struct file * filp, struct dm_ioctl * param, size_t param_size)
 { ... }
