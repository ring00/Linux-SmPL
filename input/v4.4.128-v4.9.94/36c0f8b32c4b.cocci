//# pattern-1, witnesses: 13
@r0@
identifier i, fn;
@@
struct vb2_ops i = {
    .queue_setup = fn,
};
@@
identifier alloc_ctxs;
identifier num_buffers;
identifier num_planes;
identifier q;
identifier r0.fn;
identifier sizes;
@@
- int fn(struct vb2_queue * q, unsigned int * num_buffers, unsigned int * num_planes, unsigned int * sizes, void ** alloc_ctxs)
+ int fn(struct vb2_queue * q, unsigned int * num_buffers, unsigned int * num_planes, unsigned int * sizes, struct device ** alloc_devs)
 { ... }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct vb2_ops i = {
    .queue_setup = fn,
};
@@
identifier alloc_devs;
identifier num_buffers;
identifier num_planes;
identifier q;
identifier r1.fn;
identifier sizes;
@@
 int fn(struct vb2_queue * q, unsigned int * num_buffers, unsigned int * num_planes, unsigned int * sizes, struct device ** alloc_devs)
 { ... }
