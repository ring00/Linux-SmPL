//# pattern-8, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier head;
identifier len;
identifier r0.fn;
typedef u16;
typedef u32;
identifier vrh;
@@
 int fn(struct vringh * vrh, u16 head, u32 len)
 {
     <...
- used.len = len
+ used.len = cpu_to_vringh32(vrh, len)
     ...>
 }
//# pattern-17, witnesses: 2
@@
identifier copy;
identifier getrange;
identifier gfp;
typedef gfp_t;
identifier i;
identifier rcheck;
identifier riov;
typedef u16;
identifier vrh;
identifier wiov;
@@
 int __vringh_iov(struct vringh * vrh, u16 i, struct vringh_kiov * riov, struct vringh_kiov * wiov, bool (*)(struct vringh *, u64, size_t *, struct vringh_range *, bool (*)(struct vringh *, u64, struct vringh_range *)) rcheck, bool (*)(struct vringh *, u64, struct vringh_range *) getrange, gfp_t gfp, int (*)(void *, const void *, size_t) copy)
 {
     <...
- desc.addr
+ vringh64_to_cpu(vrh, desc.addr)
     ...>
 }
//# pattern-27, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier head;
identifier len;
identifier r1.fn;
typedef u16;
typedef u32;
identifier vrh;
@@
 int fn(struct vringh * vrh, u16 head, u32 len)
 {
     <...
- used.id = head
+ used.id = cpu_to_vringh32(vrh, head)
     ...>
 }
