//# pattern-5, witnesses: 9
@r0@
identifier i, fn;
@@
struct vb2_ops i = {
    .queue_setup = fn,
};
@@
identifier alloc_ctxs;
identifier fmt;
identifier num_buffers;
identifier num_planes;
identifier q;
identifier r0.fn;
identifier sizes;
@@
- int fn(struct vb2_queue * q, const struct v4l2_format * fmt, unsigned int * num_buffers, unsigned int * num_planes, unsigned int * sizes, void ** alloc_ctxs)
+ int fn(struct vb2_queue * q, const void * parg, unsigned int * num_buffers, unsigned int * num_planes, unsigned int * sizes, void ** alloc_ctxs)
 { ... }
