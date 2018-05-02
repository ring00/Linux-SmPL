//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier avail;
typedef bool;
identifier desc;
identifier features;
identifier num;
identifier r0.fn;
typedef u32;
typedef u64;
identifier used;
identifier vrh;
identifier weak_barriers;
@@
- int fn(struct vringh * vrh, u32 features, unsigned int num, bool weak_barriers, struct vring_desc * desc, struct vring_avail * avail, struct vring_used * used)
+ int fn(struct vringh * vrh, u64 features, unsigned int num, bool weak_barriers, struct vring_desc * desc, struct vring_avail * avail, struct vring_used * used)
 { ... }
