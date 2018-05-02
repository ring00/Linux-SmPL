//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct coresight_ops_sink i = {
    .enable = fn,
};
@@
identifier csdev;
identifier r0.fn;
typedef u32;
@@
- int fn(struct coresight_device * csdev)
+ int fn(struct coresight_device * csdev, u32 mode)
 { ... }
