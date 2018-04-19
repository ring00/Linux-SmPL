//# pattern-4, witnesses: 8
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
identifier parg;
identifier q;
identifier r0.fn;
identifier sizes;
@@
- int fn(struct vb2_queue * q, const void * parg, unsigned int * num_buffers, unsigned int * num_planes, unsigned int * sizes, void ** alloc_ctxs)
+ int fn(struct vb2_queue * q, unsigned int * num_buffers, unsigned int * num_planes, unsigned int * sizes, void ** alloc_ctxs)
 { ... }
//# pattern-7, witnesses: 3
@r1@
identifier i, fn;
@@
struct vb2_ops i = {
    .queue_setup = fn,
};
@@
expression E0;
identifier alloc_ctxs;
identifier num_buffers;
identifier num_planes;
identifier q;
identifier r1.fn;
identifier sizes;
@@
 int fn(struct vb2_queue * q, unsigned int * num_buffers, unsigned int * num_planes, unsigned int * sizes, void ** alloc_ctxs)
 {
     <...
- const struct v4l2_format * fmt = parg;
- sizes[0] = ;
+ sizes[0] = E0;
     ...>
 }
//# pattern-10, witnesses: 2
@r2@
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
identifier r2.fn;
identifier sizes;
@@
 int fn(struct vb2_queue * q, unsigned int * num_buffers, unsigned int * num_planes, unsigned int * sizes, void ** alloc_ctxs)
 {
     <...
- return -EINVAL;
+ return ;
     ...>
 }
//# pattern-11, witnesses: 2
@r3@
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
identifier r3.fn;
identifier sizes;
@@
 int fn(struct vb2_queue * q, unsigned int * num_buffers, unsigned int * num_planes, unsigned int * sizes, void ** alloc_ctxs)
 {
     <...
- const struct v4l2_format * fmt = parg;
- if (fmt && fmt->fmt.pix.sizeimage < size) {
- }
+ if (*num_planes) {
+ }
     ...>
 }
